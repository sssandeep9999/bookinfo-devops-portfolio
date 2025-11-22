# BookInfo — DevOps Portfolio

This repository contains a full DevOps pipeline and infrastructure for the Istio BookInfo sample:
- Local infra: kind cluster provisioned via Terraform
- CI/CD: Jenkins pipeline (Jenkinsfile) with SonarQube, Nexus, Trivy
- Deployments: Helm charts for BookInfo
- Service Mesh: Istio (demo profile)
- Environments: dev, qa, uat, prod (Kubernetes namespaces)
- Docs and demo scripts

See `docs/how-to-run-local.md` for step-by-step.
