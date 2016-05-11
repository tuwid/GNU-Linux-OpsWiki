Enable `gzip` compression

Sending the extra `gzip` header to deflate makes the output up to 75% more compact. This is important because size has an impact on the overall performance of the web server.

Most likely gzip is enabled on your server. 
If you use nginx, you can enable it editing the following line in `/etc/nginx/nginx.conf`
```
	gzip on;
	gzip_disable "msie6";

	gzip_vary on;
	gzip_proxied any;
	gzip_comp_level 6;
	gzip_buffers 16 8k;
	gzip_http_version 1.1;
	gzip_types text/plain text/css application/json application/x-javascript text/xml application/xml application/xml+rss text/javascript;
```
Most important lines are `gzip` on and `gzip_types` 
`gzip` on turns on gzip compression. 
gzip_typesis list of MIME-types for which you want to turn on compression. text/html is implied and cannot be turned off (unless you set gzip off). text/css and application/x-javascript enables gzip compression for CSS and javascript files respectively.