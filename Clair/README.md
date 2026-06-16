# Clair Vulnerability Scanner Demo - ❌❌❌❌ Error ❌❌❌❌❌

A DevSecOps project demonstrating container image vulnerability analysis using Clair.

## Overview

Clair is an open-source vulnerability scanner for container images that performs static analysis of image layers and detects known CVEs from multiple vulnerability databases.

This project demonstrates:

- Docker image creation
- Vulnerability analysis using Clair
- Container security scanning
- GitHub Actions integration
- Automated security checks in CI/CD

---

## Architecture

```text
Developer
    │
    ▼
GitHub Push
    │
    ▼
Docker Build
    │
    ▼
Container Registry
    │
    ▼
Clair Scanner
    │
    ▼
Vulnerability Report
```

---

## Features

- Static container image analysis
- CVE detection
- Automated image scanning
- CI/CD integration
- Open-source security tooling
- Security reporting

---

## Prerequisites

- Docker
- Docker Compose
- Clair
- curl
- Git

---

## Installation

### Install Docker

#### Ubuntu

```bash
sudo apt update
sudo apt install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker
```

Verify:

```bash
docker --version
```

---

### Install Docker Compose

```bash
sudo apt install docker-compose -y
```

Verify:

```bash
docker-compose --version
```


---

## Project Structure

```text
clair-vulnerability-scanner-demo
│
├── app
├── clair
├── scripts
├── reports
└── .github
```

---

## Start Clair

```bash
./scripts/start-clair.sh
```

---

## Build Image

```bash
./scripts/build-image.sh
```
<img width="678" height="521" alt="image" src="https://github.com/user-attachments/assets/78a045b6-dc79-443a-a7bc-1ff56ff3408c" />

---

## Scan Image

```bash
./scripts/scan-image.sh
```

---

## Expected Findings

| Package | Severity | CVE |
|----------|----------|----------|
| urllib3 | High | CVE-XXXX |
| requests | Medium | CVE-XXXX |

---

## GitHub Actions

This repository includes automated vulnerability scanning for every push and pull request.

---

## Tech Stack

- Python
- Docker
- Clair
- GitHub Actions
- Container Security

---
