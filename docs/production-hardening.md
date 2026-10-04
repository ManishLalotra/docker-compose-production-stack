# Docker Compose Production Hardening

- **Healthchecks**: Services declare explicit healthchecks and dependencies use `condition: service_healthy`.
- **Resource Constraints**: Production configurations enforce memory and CPU limits (`deploy.resources.limits`).
- **Network Isolation**: Dual-tier networks (`frontend-net`, `backend-net`) restrict database exposure.
