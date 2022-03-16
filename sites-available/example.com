server {
        listen   80;
        root /;
        index /pages/index.ejs;
        server_name example.com www.exaple.com;
}