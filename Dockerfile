FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080
ENV MODEL_URL='https://storage.googleapis.com/ml-storagebucket12/model.json'
ENV GOOGLE_APPLICATION_CREDENTIALS='/src/credentials.json'
ENV GOOGLE_CLOUD_PROJECT='submissionmlgc-raihan-442023'

EXPOSE 8080

CMD ["npm", "run", "start"]
