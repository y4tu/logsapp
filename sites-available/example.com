server {
    listen   80;
    root /;
    index /pages/index.ejs;
    server_name example.com www.exaple.com;
}

server {
    listen   443 ssl;
    root /;
    index /pages/index.ejs;
    server_name example.com www.exaple.com;
    
    ssl_certificate     3.23.193.203.crt;
    ssl_certificate_key 3.23.193.203.key;
	ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

}