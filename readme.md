## 🛟 Nginx Rescue Script

```bash

Production-style Bash script that automatically installs, repairs, and restores a broken Nginx web server.

```

---

## 📖 Overview

```bash

This script simulates a real-world DevOps incident recovery scenario.

A misconfiguration broke the web server permissions, and this script automatically fixes everything.

It performs:

Installation of Nginx

Creation of web files

Permission repair

Ownership correction

Service recovery

Log verification

```

---


## ⚙️ Features

```bash

Fully automated recovery

No user input required

Uses proper Linux permissions

Production-style logging output

Safe service restart logic

Clean and readable Bash code

```

---

## 🧰 Technologies Used

```bash

Bash

systemctl

journalctl

apt package manager

chmod / chown

Linux permissions model

```

---

## 🚀 Installation

```bash

Clone the repository:

git clone https://github.com/Armen7788/rescue.sh.git
cd rescue.sh

Make script executable:

chmod +x rescue.sh

```

---

## ▶️ Usage

```bash

Run the script as root:

sudo ./rescue.sh

```
---

## 🔄 What the Script Does (Step-by-Step)

```bash

Step 1 — Install Nginx

Updates system packages and installs Nginx:

apt update
apt install -y nginx
Step 2 — Create Web Files

Creates:

/var/www/html/page1.html
/var/www/html/page2.html
/var/www/html/page3.html

Sets correct permissions:

644

Sets correct ownership:

www-data:www-data

Step 3 — Service Recovery Logic

Checks if Nginx is running:

If running:

Restart service

If stopped:

Start service
Step 4 — Log Verification

Shows last 5 Nginx logs:

journalctl -u nginx -n 5

This confirms successful recovery.

```

---

## 📂 Project Structure

```bash
.
├── rescue.sh
└── README.md

```

---

## 🖥️ Example Output

```bash
== Step 1: apt update + install nginx ==
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Reading package lists... Done
nginx is already the newest version.

== Step 2: create pages + chmod + chown ==
Created page1.html
Created page2.html
Created page3.html

== Step 3: check nginx status and restart/start ==
Nginx is running. Force restarting now...

== Step 4: show last 5 nginx logs ==
Feb 24 14:32:11 ubuntu systemd[1]: Starting A high performance web server...
Feb 24 14:32:11 ubuntu systemd[1]: Started A high performance web server.
Feb 24 14:35:02 ubuntu systemd[1]: Reloading A high performance web server...
Feb 24 14:35:02 ubuntu systemd[1]: Reloaded A high performance web server.
Feb 24 14:40:15 ubuntu systemd[1]: Restarted A high performance web server.

```

---

```bash

🌐 Testing

After running, open browser:

http://localhost/page1.html
http://localhost/page2.html
http://localhost/page3.html

```

---

```bash

🧠 Skills Demonstrated

This project demonstrates real DevOps skills:

Linux system administration

Service management

Bash scripting

Incident recovery

Automation

File permissions

```

---

👨‍💻 Author

```bash

Armen Gevorgyan

GitHub: https://github.com/Armen7788

```

