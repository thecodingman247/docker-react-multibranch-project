# Multiple docker container concept - Video : 21 , 22 , 23 

# Step 1
FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install 
COPY . .
RUN npm run build 

# Step 2
FROM nginx 
EXPOSE 80
# Exposing port to EBS (Elastic Bean Stalk - AWS) for mapping application with EBS, not needed for local docker enviorment 
COPY --from=builder /app/build /usr/share/nginx/html 