#!/bin/bash
sudo yum install -y docker
sudo systemctl start docker
sudo docker pull cradaca39/mysql-db:1.0.0
sudo docker run -d -it cradaca39/mysql-db:1.0.0
sudo docker pull cradaca39/globant-test:1.0.0
sudo docker run -d -it -p 5000:5000 cradaca39/globant-test:1.0.0

