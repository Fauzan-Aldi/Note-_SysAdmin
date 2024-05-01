
# Simple ways to setup Odoo development on Docker  
Simplified tutorial to install odoo using docker, it compatible with macOS, windows and linux.



> [!Important]
> This method doesn't support a custom / specific configuration to achieve certain goals


## ⚠ Requirement
- IDE / Code editor / Notepad
- Docker Desktop








## Setup Docker desktop
1. Download docker to run docker engine
2. Link to docker desktop
    
    a. MacOS: [Apple silicon link](https://desktop.docker.com/mac/main/arm64/Docker.dmg?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*2gx35p*_ga*MjM0NTM5MTUzLjE3MTQxMzQ1MDc.*_ga_XJWPQMJYHQ*MTcxNDU3ODkxNy4zLjEuMTcxNDU3ODk5MS41OS4wLjA.)
    
    b. Windows: [link](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*1ncu28n*_ga*MjM0NTM5MTUzLjE3MTQxMzQ1MDc.*_ga_XJWPQMJYHQ*MTcxNDU3ODkxNy4zLjEuMTcxNDU3ODkxOS41OC4wLjA.)

    c. Linux: [link](https://docs.docker.com/desktop/linux/install/?_gl=1*7u0a2a*_ga*MjM0NTM5MTUzLjE3MTQxMzQ1MDc.*_ga_XJWPQMJYHQ*MTcxNDU3ODkxNy4zLjEuMTcxNDU3ODk5MS41OS4wLjA.)
3. Run the installer executable
4. For windows check the pre-install WSL2
5. After finish the installaion
6. To run the docker engine, start the docker desktop app
## Setup the Docker Compose file

1. Create our docker folder using this structure:

   <p align="center">
        <img src="https://github.com/g3ngi/sysadmin-note/assets/67721997/b8e311af-9c1c-4cbc-a294-eb1204068d18" alt="Screenshot 1">
    </p>
    
&nbsp;

2. Configure the `docker-compose.yml` file using this format:

   ```yaml
   version: "2"
   services:
     web:
       image: odoo:17.0
       depends_on:
         - db
       ports:
         - "8069:8069"
       volumes:
         - odoo-web-data:/var/lib/odoo
         - ./your_project/config:/etc/odoo                
         - ./your_project/your-addons:/mnt/extra-addons/your-addons
         - ./your_project/extra-addons:/mnt/extra-addons/extra-addons  

     db:
       image: postgres:10
       ports:
         - "5432:5432"
       environment:
         - POSTGRES_DB=postgres
         - POSTGRES_PASSWORD=odoo
         - POSTGRES_USER=odoo
         - PGDATA=/var/lib/postgresql/data/pgdata
       volumes:
         - odoo-db-data:/var/lib/postgresql/data/pgdata

   volumes:
     odoo-web-data:
     odoo-db-data: 
This format not necessary for every configuration, you could edit it into with better config. 

&nbsp;

3. Open the docker desktop app to start the docker engine

4. Open terminal inside odoo_docker folder and run this command:
    ```
    docker-compose up
    ```

5. Acesss `localhost:8069` to access odoo web, it will lead to this page:


![image](https://github.com/g3ngi/sysadmin-note/assets/67721997/0d5d2cf2-bd32-4823-a6cd-400c82bbe75e)


After fill the form and it will lead to login page:

![image (2)](https://github.com/g3ngi/sysadmin-note/assets/67721997/1c4805db-cae4-41a5-b565-b11f3da6543b)


6. Lastly, open and configure the `odoo.conf` file and the default it will look like this:

&nbsp;
![image (4)](https://github.com/g3ngi/sysadmin-note/assets/67721997/5ae2338b-7ad2-4e6c-8166-f0945f9bcb35)

&nbsp;

To configure the database connection define the db host, port, and credentials

```
[options]
admin_passwd = your_hashed_admin_password
addons_path = /mnt/extra-addons
data_dir = /var/lib/odoo
db_host = odoo-db-1
db_port = 5432
db_user = odoo
db_password = odoo
http_port = 8069
```



7. Access `localhost:8069` and congrats you've installed odoo using docker 💥
&nbsp;
![image (5)](https://github.com/g3ngi/sysadmin-note/assets/67721997/446086ce-d0d7-4ddf-8c42-09e61755d742)
