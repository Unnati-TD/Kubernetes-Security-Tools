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
- Syft

---
## First Steps
```bash
chmod +x scripts/scan.sh
chmod +x scripts/generate-sbom.sh
```


## Build Image

```bash
docker build -t grype-demo:latest ./app
```

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
