FROM nginx:1-alpine

EXPOSE 8080
ENV PORT=8080
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
