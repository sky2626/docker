# build stage
#FROM node:lts-alpine as build-stage
#WORKDIR /app
#COPY . .
#RUN npm install
#RUN npm run build

# production stage
#FROM nginx:stable-alpine as production-stage
#COPY --from=build-stage /app/.output /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]


# Option two
FROM node:lts-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build


FROM node:20.14.0-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the output from the build stage to the working directory
COPY --from=build /app/.output ./

# Define environment variables
ENV HOST=0.0.0.0 NODE_ENV=production
ENV NODE_ENV=production

# Expose the port the application will run on
EXPOSE 3000

# Start the application
CMD ["node","/app/server/index.mjs"]
