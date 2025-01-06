
# How to deploy Localhost Flask app in AWS EC2 Instances
A tutorial to deploy your Localhost Flask Web App / API in AWS EC2 Instances.


## ⚠ Requirement
- Flask app that are ready to be deploy
- Registered AWS account 
- Your browser (if web app)
- CLI / Postman (if API)
## Creating EC2 Instances
Here's a a detailed tutorial [to create AWS EC2 instances](https://www.geeksforgeeks.org/amazon-ec2-creating-an-elastic-cloud-compute-instance/).

## Connect to your instances
Go to the EC2 management console then click "connect" on your instances then new page will appear. Then click "SSH client" section to SSH client page like the image below. 

Follow the the tutorial that are provided from AWS to connect to your instances via SSH.

![image](https://github.com/user-attachments/assets/b9d5d3af-d645-45a1-8cd4-1f3ab75443ce)


## Configure your instance
1. First, Update the package of the instance  

    ```
    $ sudo apt-get update
    ```

2. Second, Install the requirements
- Install the ```pip```
    ```
    $ sudo apt install python-pip
    ```

- Install the ```venv```
    ```
    $ sudo apt install python3-venv
    ```
## Configure your project
1. Clone your Flask repository

    ```
    $ git clone https://github.com/your_project.git
    ```

2. Change the directory(cd) into the Flask project
    
    ```
    $ cd your_project/
    ```

3. Create the python ```virtual environment``` and ```activate``` it

    ```
    $ python3 -m venv venv
    $ source venv/bin/activate
    ```

4. Install the dependencies of your Flask project

    ```
    $ pip3 install -r requirement.txt
    ```

5. Start the flask app (make sure you're in app.py directory)
    
- ```debug``` = Run in debug mode
- ```host``` =  Host address where our project will run
- ```port```= Port where our project will run
    
```
$ flask run --debug --host=0.0.0.0 --port=XXXX
```
