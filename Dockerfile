FROM node:18 AS build
WORKDIR /app
COPY ./angular-app .
RUN npm install
RUN npm run build --prod

# Use Nginx for serving the Angular app
FROM nginx:alpine
COPY --from=build /app/dist/angular-app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
