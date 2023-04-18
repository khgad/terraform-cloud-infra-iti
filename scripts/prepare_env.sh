#!/bin/bash

#--------------- this script is to prepare environment for public instances --------------#

# install redis to connect to elasticache
cd /home/ec2-user
sudo amazon-linux-extras install epel -y
sudo yum install gcc jemalloc-devel openssl-devel tcl tcl-devel -y
sudo wget http://download.redis.io/redis-stable.tar.gz
sudo tar xvzf redis-stable.tar.gz
cd redis-stable
sudo make BUILD_TLS=yes

sudo cp /home/ec2-user/redis-stable/src/redis-cli /usr/bin

# install mysql to connect to RDS
sudo yum install -y mariadb

# wrtie script to auto connect to RDS DB
echo "#!/bin/bash" > /home/ec2-user/rds_connect.sh
echo "mysql -h ${rds_endpoint} -u ${rds_username} -p" >> /home/ec2-user/rds_connect.sh
chmod +x /home/ec2-user/rds_connect.sh

# wrtie script to auto connect to Elasticache DB
echo "#!/bin/bash" > /home/ec2-user/ec_connect.sh
echo "redis-cli -h ${ec_endpoint} -p ${ec_port}" >> /home/ec2-user/ec_connect.sh
chmod +x /home/ec2-user/ec_connect.sh

# copy the private key to instance to make it able to connect to private instances
echo "${private_key}" > /home/ec2-user/tf-key.pem
chmod 400 /home/ec2-user/tf-key.pem