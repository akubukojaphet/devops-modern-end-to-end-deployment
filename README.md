# 🚀 DevOps Modern End-to-End Deployment

## 📌 Project Objective

This project implements a complete DevOps pipeline to deploy and manage two applications using:

- Infrastructure as Code (Terraform)
- Containerization (Docker & Docker Compose)
- Configuration Management (Ansible)
- CI/CD Automation (GitHub Actions)
- Orchestration (Kubernetes)

---

## 🧩 Applications Deployed

### 🌐 Portfolio Web Application
- Built using HTML & CSS  
- Served via Nginx container  
- Runs on port **8081**

### ☕ Java Web Application
- Built using Java (Vaadin)  
- Packaged with Maven (WAR file)  
- Deployed on Tomcat  
- Runs on port **8082**

---

## 🧱 Part 1: Infrastructure & Application Deployment

### 🐳 Containerization (Docker)

Both applications were containerized using Docker.

### Docker Compose

```bash
docker compose up -d --build
