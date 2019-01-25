FROM nginx:latest

# Add nginx configuration and static HTML
ADD default.conf /etc/nginx/conf.d/default.conf
COPY html /usr/share/nginx/maintenance

# Add entrypoint script for creating a self-signed certificate
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod a+x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
