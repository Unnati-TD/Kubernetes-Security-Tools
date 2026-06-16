# Grype Vulnerability Scanning Demo

A DevSecOps project demonstrating container vulnerability scanning using Grype and SBOM generation using Syft.

## Features

- Docker image vulnerability scanning
- SBOM generation
- JSON reporting
- SARIF reporting
- GitHub Actions integration
- CI/CD security gate

---

## Architecture

```text
Developer
    |
    ▼
GitHub Push
    |
    ▼
GitHub Actions
    |
    ├── Docker Build
    ├── Syft SBOM Generation
    ├── Grype Scan
    └── Upload SARIF Report
```

---

## Prerequisites

- Docker
- Grype
- syft

```bash
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh
sudo mv ./bin/grype /usr/local/bin/
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh
sudo mv ./bin/syft /usr/local/bin/

```
<img width="944" height="273" alt="image" src="https://github.com/user-attachments/assets/a9238f4e-60e7-42f7-8b51-babe1b399b9a" />

---
## First Steps
```bash
chmod +x scripts/scan.sh
chmod +x scripts/generate-sbom.sh
```
<img width="631" height="67" alt="image" src="https://github.com/user-attachments/assets/f3e22d37-103c-4622-b247-232df5f285ec" />


## Build Image

```bash
docker build -t grype-demo:latest ./app
```
<img width="823" height="530" alt="image" src="https://github.com/user-attachments/assets/daab87a4-54f5-40ab-b35f-1da5ea8c38af" />

## Scan Image

```bash
grype grype-demo:latest
```

## Generate SBOM

```bash
./scripts/generate-sbom.sh
```

## Scan SBOM

```bash
grype sbom:reports/sbom.json
```

---

## Example Findings

| Package | Installed | Fixed Version | Severity |
|----------|------------|--------------|-----------|
| urllib3 | 1.25.0 | 1.26.5 | HIGH |
| requests | 2.25.0 | 2.31.0 | MEDIUM |

---

## GitHub Actions Security Gate

Build fails automatically if:

- HIGH vulnerability found
- CRITICAL vulnerability found

---

## Tech Stack

- Python
- Docker
- Grype
- Syft
- GitHub Actions
