# TTech_Magento1-2Docker
Magento 1 and 2 Docker, Package, to allow for for both cli and magento 1, custom nginx configs, redis. 

-- Copy file from live to local if not a new system

```
rsync -avP -e 'ssh -p 2020' user@ipaddress:port:/<full path>/www/html ./web/
```

-- To launch Docker

```
docker-compose up -d ## launch the instance
docker-compose ps ## check the instance is running
docker-compose logs ##check the logs if it fails

sudo iptables -L -n ##output the iptables rules the ip address will normally be 172.x.x.xxx -> 80
sudo nano /etc/hosts ## edit your hosts file

### 172.x.x.xxxx local.test.com ### add to the hosts

```

# TODO

1. Intergrate Composer
2. Intergrate Magento Installer
3. Intergrate Magento 2 Nginx Config
4. Intergrate Varnish

