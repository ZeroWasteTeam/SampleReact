FROM node:13.12.0-alpine as build-image
WORKDIR /app
COPY . ./
RUN npm install
RUN npm run build
RUN ls

FROM nginx:1.12-alpine
COPY --from=build-image /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]