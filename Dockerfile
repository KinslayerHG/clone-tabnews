FROM node:18-alpine

WORKDIR /.dev/clone-tabnews

COPY package.json ./

RUN npm install next@13.1.6 \
    && npm install react@18.2.0 \
    && npm install react-dom@18.2.0

EXPOSE 3000