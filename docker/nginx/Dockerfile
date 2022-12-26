FROM nginx
EXPOSE 80
COPY index.html /usr/share/nginx/html/
ENV user=ghost
ENTRYPOINT ["bash", "-c", "nginx && bash"]
