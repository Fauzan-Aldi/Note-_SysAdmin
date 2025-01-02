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
