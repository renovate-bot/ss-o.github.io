---
title: "Code Server"
date: 2020-07-26T18:24:36+01:00
draft: false
toc: false
images: 
  - code-server.png
tags: 
  - code-server
  - vscode
---

![screenshot]

**Linux Ubuntu 18.04/20.04** tested

```bash
$ mkdir ~/code-server && cd ~/code-server
```

From official [github releases](https://github.com/cdr/code-server/releases) page of code-server pick the latest Linux build (the file will contain ‘linux’ in it's name).


```bash
$ wget https://github.com/cdr/code-server/releases/download/3.2.0/code-server-3.2.0-linux-x86_64.tar.gz
```
```bash
$ tar -xzvf code-server-3.2.0-linux-x86_64.tar.gz
```

 Copy it to /usr/lib/code-server so you’ll be able to access it system wide by running the following command:


```bash
$ sudo cp -r code-server-3.2.0-linux-x86_64 /usr/lib/code-server
```

 Then, create a symbolic link at /usr/bin/code-server, pointing to the code-server executable:


```bash
$ sudo ln -s /usr/lib/code-server/code-server /usr/bin/code-server
```

 Next, create a folder for code-server, where it will store user data:


```bash
$ sudo mkdir /var/lib/code-server
```

 Create `code-server.service` to run in background with the following commands:

```bash
$ sudo nano /lib/systemd/system/code-server.service
```

 Add the following lines:

```bash
[Unit]
Description=code-server
After=nginx.service

[Service]
User=your_user
Type=simple
Environment=PASSWORD=your_password
ExecStart=/usr/bin/code-server --bind-addr 127.0.0.1:8080 --user-data-dir /var/lib/code-server --auth password
Restart=always

[Install]
WantedBy=multi-user.target
```

 Start the code-server service by running the following command:

```bash
$ sudo systemctl start code-server
```

 Check that it’s started correctly by observing its status:

```bash
$ sudo systemctl status code-server
```

 To make code-server start automatically after a server reboot, enable its service by running the following command:

```bash
$ sudo systemctl enable code-server
```

 Make sure nginx installed. As you have learned in the Nginx prerequisite step, its site configuration files are stored under /etc/nginx/sites-available and must later be symlinked to /etc/nginx/sites-enabled to become active.

> You’ll store the configuration for exposing code-server at your domain in a file named code-server.conf, under /etc/nginx/sites-available. Start off by creating it using your editor:

```bash
$ sudo nano /etc/nginx/sites-available/code-server.conf
```
 Add following:

```bash
server {
    listen 80;
    listen [::]:80;

    server_name code-server.your-domain;

    location / {
      proxy_pass http://localhost:8080/;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection upgrade;
      proxy_set_header Accept-Encoding gzip;
    }
}
```

 To make this site configuration active, you will need to create a symlink of it in the /etc/nginx/sites-enabled folder by running:

```bash
$ sudo ln -s /etc/nginx/sites-available/code-server.conf /etc/nginx/sites-enabled/code-server.conf
```

 To test the validity of the configuration, run the following command:

```bash
$ sudo nginx -t
```

 For the configuration to take effect, you’ll need to restart Nginx:

```bash
$ sudo systemctl restart nginx
```

 Setup certificate with cerbot:

```bash
$ sudo apt install python3-certbot-nginx
$ sudo ufw allow https
$ sudo ufw reload
```

 And finally: 

```bash
$ sudo certbot --nginx -d code-server.your-domain
```

---

[screenshot]: docs/images/code-server.png