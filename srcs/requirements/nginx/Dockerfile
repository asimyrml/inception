FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y nginx openssl && \
    apt-get clean

# SSL sertifikası oluşturulacak scripti kopyala
COPY tools/setup.sh /setup.sh
RUN chmod +x /setup.sh

# NGINX config dosyasını kopyala
COPY conf/default.conf /etc/nginx/sites-available/default

# SSL dosyalarının konulacağı yer
RUN mkdir -p /etc/nginx/ssl

EXPOSE 443

CMD ["/setup.sh"]
