FROM node:18 AS main
WORKDIR /directus
ENV TZ Europe/Berlin
EXPOSE 8080

FROM main AS build
COPY ./ .
RUN npm i -q --production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
RUN npm run build

FROM build as release
CMD ["npm", "run", "start"]