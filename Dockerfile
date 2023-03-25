FROM node:19

ENV NODE_OPTIONS="--max-old-space-size=8192"

RUN rm -rf ~/.ssh

RUN apt-get update && apt-get install -y bash supervisor curl

RUN mkdir /timeflow-frontend
COPY timeflow-frontend/. /timeflow-frontend

RUN mkdir /timeflow-backend
COPY timeflow-backend/. /timeflow-backend

RUN mkdir /timeflow-ci-server
COPY timeflow-ci-server/. /timeflow-ci-server


# Have to be set for the build...

ENV NEXT_PUBLIC_API_PREFIX=http://localhost:3001/api/
ENV NEXT_PUBLIC_GITHUB_CLIENT_ID=7125ed4d07c9867c0c74

WORKDIR /timeflow-frontend
RUN npm install
RUN npm run build

WORKDIR /timeflow-backend
RUN npm install
RUN npm run build

WORKDIR /timeflow-ci-server
RUN npm install
RUN npm run build

RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade setuptools
RUN pip3 install dbt-core
RUN pip3 install dbt-clickhouse

ADD supervisor.conf /app/
CMD supervisord -c /app/supervisor.conf

EXPOSE 3000
EXPOSE 3001
EXPOSE 3002

CMD supervisord -c /app/supervisor.conf 
