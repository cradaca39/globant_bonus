# globant_bonus

The purpose of the projects is evaluate different tools of data engineer such as API, SQL and Cloud.

## Description

In the file Globant’s Data Engineering Coding Challenge.pdf you will found the instruction step by step for develop the challenge.

the bonus its to make an arquitecture of the globant challenge in a cloud

## Getting Started

### Tools

```
terraform
putty
aws
docker
```

### Installing

* to begin we download terraform and execute in terminal the command

![alt text](image.png)


* terraform will help to us to configurate the infraestructure of the cloud, in this case we select AWS to make the connection.

* in AWS we have to create an instance that we can host our containers, so we configurate the tools we need such as security group, vpc, IAM role, EC2 .....

![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)
![alt text](image-6.png)

* When we done the configuration of aws, we create a ec2.tf file to configurate the connection and the set up for the aws cloud.

![alt text](image-1.png)



* we use the next command to apply the manifest to aws

![alt text](image-9.png)

* with the command plan we will know what would be modify in the infraestructure

![alt text](image-10.png)
![alt text](image-11.png)

* When we deployed the instances we can validate with putty the connection to the linux instance

![alt text](image-7.png)
![alt text](image-8.png)

* Next we need to install docker and with the user we begin to create a container in docker

![alt text](image-12.png)

* with the command docker images we validate the images

![alt text](image-13.png)

* the next step is run the docker with the command

```
sudo docker run -d -it -p 5000:5000 cradaca39/globant-test:1.0.0

```

* Then we would found our registry in docker hub with the command

```
sudo docker push cradaca39/globant-test:1.0.0

```
* Finally we have our project api in container

![alt text](image-14.png)
![alt text](image-15.png)

* We find our docker file in the globant challenge project

## Authors

Contributors names and contact info

ex. Craig David Cartagena

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments

Inspiration, code snippets, etc.
* [terraform_aws](https://www.youtube.com/watch?v=4ZCrRbPR3gc&ab_channel=AWSMadeEasy)
* [putty](https://www.youtube.com/watch?v=051Jdka8piY&ab_channel=AWSMadeEasy)
* [docker](https://www.youtube.com/watch?v=syreTtT5l6A&ab_channel=DanielDotson)


