FROM httpd:2.4

EXPOSE 80

COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Add application code
COPY . /usr/local/apache2/htdocs

# Cleanup
RUN rm -rf /usr/local/apache2/{httpd.conf,Dockerfile}

CMD ["httpd-foreground"]