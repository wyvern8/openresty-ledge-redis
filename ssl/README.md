# ssl

directory for ssl certs mapped to openresty.

generate in this dir using:
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
```