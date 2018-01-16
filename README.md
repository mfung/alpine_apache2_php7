# alpine_apache2_php7
Docker image, latest Alpine, Apache 2, PHP7

* Apache is setup for vhost and ServerName is set to www.mengfung.com:80 should be changed

# Useage
'''
docker create -ti --name test_httpd_server -p 80:80 -p 443:443 mengfung/alpine-apache2-php7:latest
docker start test_httpd_server
docker exec -ti test_httpd_server sh
'''