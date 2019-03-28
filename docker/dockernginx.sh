#!/bin/bash
mkdir -p ~/dockerFiles/nginx/html
echo "<html>\n<head>\n</head>\n<body>\n<h1>NGINX was configured correctly via the docker setup script.</h1>\n</body>\n</html>" > ~/dockerFiles/nginx/html/index.html
docker run -d --name nginx -p 80:80 -p 443:443 -v ~/dockerFiles/nginx/html:/usr/share/nginx/html nginx
