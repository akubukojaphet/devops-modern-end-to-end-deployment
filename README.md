# 🚀 Modern End-to-End DevOps Deployment Pipeline

A complete DevOps pipeline project demonstrating real-world deployment of two applications using industry-standard tools from infrastructure provisioning to CI/CD automation and container orchestration.

---

## 📌 Project Overview

This project implements a full DevOps workflow covering:

| Tool | Purpose |
|---|---|
| **Terraform** | Infrastructure as Code (IaC) |
| **Docker & Docker Compose** | Containerization |
| **Ansible** | Configuration Management |
| **GitHub Actions** | CI/CD Automation |
| **Kubernetes** | Container Orchestration |

---

## 🧩 Applications Deployed

### 🌐 Portfolio Web Application
- **Stack:** HTML & CSS
- **Web Server:** Nginx (containerized)
- **Port:** `8081`

### ☕ Java Web Application
- **Stack:** Java with Vaadin framework
- **Build Tool:** Maven (WAR file output)
- **Server:** Apache Tomcat
- **Port:** `8082`

---

## 📁 Project Structure

```
.
├── terraform/          # Infrastructure as Code
│   └── main.tf
├── ansible/            # Configuration management
│   ├── inventory.ini
│   └── deploy.yml
├── k8s/                # Kubernetes manifests
│   ├── portfolio-deployment.yaml
│   └── java-app-deployment.yaml
├── .github/
│   └── workflows/      # GitHub Actions CI/CD pipeline
├── docker-compose.yml  # Multi-container orchestration
└── README.md
```

---

## 🐳 Containerization (Docker)

Both applications are containerized using Docker and orchestrated with Docker Compose.

### Run Both Applications

```bash
docker compose up -d --build
```

### Verify Running Containers

```bash
docker ps
```

| Container | Port |
|---|---|
| Portfolio (Nginx) | http://localhost:8081 |
| Java App (Tomcat) | http://localhost:8082 |

---

## 🏗️ Infrastructure as Code (Terraform)

Terraform is used to define, validate, and provision infrastructure reproducibly.

```bash
cd terraform
terraform init       # Initialize providers and backend
terraform validate   # Validate configuration syntax
terraform plan       # Preview infrastructure changes
terraform apply      # Provision infrastructure
```

---

## ⚙️ Configuration Management (Ansible)

Ansible automates server configuration and application deployment.

```bash
cd ansible
ansible-playbook -i inventory.ini deploy.yml
```

---

## ☸️ Kubernetes Orchestration

Kubernetes manifests are provided for scalable, production-style deployment of both applications.

```bash
# Deploy all resources
kubectl apply -f k8s/

# Check deployment status
kubectl get pods
kubectl get services
```

---

## 🔄 CI/CD Pipeline (GitHub Actions)

The automated pipeline triggers on every push and runs the following stages:

```
Push to main
      │
      ▼
✅ Code Checkout
      │
      ▼
✅ Java Build (Maven)
      │
      ▼
✅ Docker Image Build
      │
      ▼
✅ Docker Compose Validation
      │
      ▼
✅ Application Verification
      │
      ▼
✅ Terraform Validation
      │
      ▼
✅ Ansible Validation
      │
      ▼
✅ Kubernetes YAML Validation
```

---

## 📸 Screenshots

### ✅ CI/CD Pipeline — All Stages Passed
The pipeline automatically builds, validates, and tests the applications on every push to the `main` branch.
<img width="1902" height="827" alt="image" src="https://github.com/user-attachments/assets/ab4ad76e-8d95-4f4b-a6bb-15db33dd0041" />


### 🌐 Portfolio Application Running
<img width="1767" height="987" alt="image" src="https://github.com/user-attachments/assets/35ee1568-176d-44e2-b3fb-301e1cf75944" />


### 🐳 Docker Containers Running
<img width="1716" height="289" alt="image" src="https://github.com/user-attachments/assets/8524923d-c535-400f-bc08-8439eeed8614" />


---

## 🛠️ Prerequisites

Before running this project, ensure you have the following installed:

- [Docker](https://docs.docker.com/get-docker/) & Docker Compose
- [Terraform](https://developer.hashicorp.com/terraform/install)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Java 11+](https://adoptium.net/) & [Maven](https://maven.apache.org/)

---

## 👤 Author

**Akubuko Japhet Uchenna**  
Cloud & DevOps Engineer  
[LinkedIn](https://linkedin.com/in/akubuko-japhet) • akubukojaphet@gmail.com
