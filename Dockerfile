FROM nginx:alpine

# Copia todos os arquivos da pasta public/ para o nginx
COPY public/ /usr/share/nginx/html

# Ajusta regra para aceitar URLs sem .html
RUN sed -i 's|try_files .*;|try_files $uri $uri.html $uri/ =404;|' /etc/nginx/conf.d/default.conf || true
