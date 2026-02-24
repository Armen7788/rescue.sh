# 🛟 Nginx Rescue Script (macOS Version)

![Bash](https://img.shields.io/badge/language-bash-blue)
![macOS](https://img.shields.io/badge/platform-macos-lightgrey)
![Nginx](https://img.shields.io/badge/service-nginx-green)
![Homebrew](https://img.shields.io/badge/package_manager-homebrew-orange)

Automated Bash script that installs, repairs, and restores the Nginx web server on macOS using Homebrew.

---

# 📖 Overview

This project simulates a real DevOps recovery scenario.

The script automatically:

- installs nginx
- creates web pages
- fixes permissions
- ensures nginx is running
- displays logs

This version is designed specifically for **macOS**.

---

# ⚙️ Requirements

- macOS
- Homebrew installed
- Bash shell

---

# 🍺 Install Homebrew (if not installed)

Run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

---

## 🚀 Installation

```bin

Clone the repository:

git clone https://github.com/Armen7788/rescue.sh.git
cd rescue.sh

Make script executable:

chmod +x rescue.sh

```
---

## ▶️ Usage

```bin

Run the script:

./rescue.sh

---

## 🔧 What the Script Does

```bash

Step 1 — Install Nginx

Installs nginx using Homebrew:

brew install nginx
Step 2 — Create Web Files

Creates:

page1.html
page2.html
page3.html

in nginx web root directory.

Sets correct permissions:

chmod 644

Sets ownership:

chown user:staff


Step 3 — Service Recovery

Checks nginx status using:

brew services list

If running → restart

If stopped → start

Step 4 — Log Verification

Shows last 5 nginx log lines using:

tail -n 5 error.log

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

== Step 1: Install nginx using Homebrew ==
Warning: nginx already installed

== Step 2: Create pages and set permissions ==
page1.html created
page2.html created
page3.html created

== Step 3: Check nginx service ==
Nginx is running. Restarting...

== Step 4: Show last 5 nginx logs ==
nginx: signal process started
nginx: configuration reloaded

```
---

## 🌐 Testing

```bash

Open in browser:

http://localhost:8080/page1.html

```

---

## 🧠 Skills Demonstrated

```bash

This project demonstrates:

Bash scripting

Service management

Homebrew usage

File permissions

DevOps automation

Troubleshooting

```

---

## 👨‍💻 Author

```bash

Armen Gevorgyan

GitHub: https://github.com/Armen7788

```
