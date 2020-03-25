From node:alpine as builder
Workdir '/app'
Copy package.json .
Run npm install
Copy . .
Run npm run build

From nginx
Expose 80
Copy  --from=builder /app/build /usr/share/nginx/html


