# DevOps + Cloud Learning – Milestone 3

## 📚 Topics Covered

### 🌿 Git & Version Control
**Types of Version Control Systems**
- Local → Only on one system  
- Centralized (CVCS) → Single server stores code  
- Distributed (DVCS) → Each developer has a full repo copy (e.g., Git)  

**Git Basics**
- `git init` → Initialize repo  
- `git status` → Check repo state  
- `git add` → Stage changes  
- `git commit -m "msg"` → Save changes  
- `git log` → Show commit history  

**Branching & Merging**
- `git branch` → List branches  
- `git checkout -b feature` → Create & switch branch  
- `git merge branchname` → Merge changes  

**Undo & Revert**
- `git reset --hard` → Reset to previous commit  
- `git revert <commit-id>` → Safely undo  

**Tags**
- `git tag v1.0` → Create tag  
- `git push origin v1.0` → Push tag to remote  

---

### 📦 Vagrant Advanced Usage
- **Multi-VM Setup** → Example: separate web and db servers in one Vagrantfile  
- **Provisioning with Shell Scripts** → Automating package installation/configuration at VM startup  
- **Synced Folders** → Share code between host and VM automatically  

---

### 🖥️ Linux Server Setup
- Installed **Apache (httpd)** web server  
- Deployed a static HTML website inside `/var/www/html/`  
- Verified website using private IP of VM  

---

### ⚙️ Automated Website Deployment with Vagrant
Used **Vagrant provisioning** to automatically:  
- Install Apache  
- Copy website files from host to VM  
- Start and enable `httpd` service  

---

### 🌐 WordPress Setup
- Installed Apache + MySQL + PHP (**LAMP stack**)  
- Downloaded & configured WordPress in `/var/www/html/`  
- Created MySQL database & user for WordPress  
- Completed initial web setup via browser  

---

### 🐱 Apache Tomcat
- Downloaded and installed **Apache Tomcat**  
- Started Tomcat service on port **8080**  
- Managed Tomcat service via `systemctl`  

---

## 💡 Key Takeaways
- Gained strong hands-on with **Git workflows**  
- Automated VM & web server setup with **Vagrant provisioning**  
- Hosted a working **static website & WordPress site** on Linux server  

---

🚀 Continuing my DevOps + Cloud journey step-by-step.  
📬 Let’s connect, collaborate, and grow together.  

