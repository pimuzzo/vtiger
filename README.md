#### BUILD IMAGE:

You can choose between:

##### 1) Build from Dockerfile:

` docker build -t vtiger . ` (in the same path of your Dockerfile)

##### 2) Pull it from docker hub:
` docker pull pimuzzo/vtiger `

#### RUN CONTAINER:

You need a DB container, you can choose between:

##### 1) MariaDB:
` docker run --name mariadb -d -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=vtiger -e MYSQL_USER=vtiger_user -e MYSQL_PASSWORD=pwd --net=host mariadb `

##### 2) MySQL:
` docker run --name mysql -d -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=vtiger -e MYSQL_USER=vtiger_user -e MYSQL_PASSWORD=pwd --net=host mysql:5.5 `

Then run Vtiger container:

` docker run --name vtiger -d -e DB_HOSTNAME=127.0.0.1 -e DB_USERNAME=vtiger_user -e DB_PASSWORD=pwd -e DB_NAME=vtiger -p 80:80 --net=host vtiger `

#### CONFIGURATION:

Follow the steps: [http://localhost/vtigercrm](http://localhost/vtigercrm)
