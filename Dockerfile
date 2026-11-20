FROM node:24-bookworm-slim
WORKDIR /app
COPY package.json ./
COPY *.mjs ./
COPY public ./public
ENV NODE_ENV=production PORT=8788 APP_DB=/data/app.sqlite
EXPOSE 8788
CMD ["node","server.mjs"]
