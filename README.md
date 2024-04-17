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


![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image.png?raw=true)


* terraform will help to us to configurate the infraestructure of the cloud, in this case we select AWS to make the connection.

* in AWS we have to create an instance that we can host our containers, so we configurate the tools we need such as security group, vpc, IAM role, EC2 .....

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-2.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-3.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-4.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-5.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-6.png?raw=true)


* When we done the configuration of aws, we create a ec2.tf file to configurate the connection and the set up for the aws cloud.

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-1.png?raw=true)


* we use the next command to apply the manifest to aws

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-9.png?raw=true)


* with the command plan we will know what would be modify in the infraestructure

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-10.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-11.png?raw=true)


* When we deployed the instances we can validate with putty the connection to the linux instance

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-7.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-8.png?raw=true)


* Next we need to install docker and with the user we begin to create a container in docker

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-12.png?raw=true)

* with the command docker images we validate the images

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-13.png?raw=true)

* the next step is run the docker with the command

```
sudo docker run -d -it -p 5000:5000 cradaca39/globant-test:1.0.0

```

* Then we would found our registry in docker hub with the command

```
sudo docker push cradaca39/globant-test:1.0.0

```
* Finally we have our project api in container

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-14.png?raw=true)

![alt text](https://github.com/cradaca39/globant_bonus/blob/main/images/image-15.png?raw=true)

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


