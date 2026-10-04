# docker-compose-production-stack

> Production-ready, modular Docker Compose blueprints featuring healthcheck dependency orchestration, network isolation, and monitoring.

## Included Stacks
1. **Node + PostgreSQL + Redis + Nginx**: Full-stack web application with isolated tiers and automated dependency health.
2. **Monitoring Stack**: Prometheus, Grafana, and Node Exporter configured for out-of-the-box infrastructure metrics.

## Management CLI
```bash
./scripts/manage-stack.sh node-postgres-redis up
./scripts/manage-stack.sh node-postgres-redis validate
./scripts/manage-stack.sh node-postgres-redis down
```

## Author
**Manish Lalotra**  
Full Stack Developer & DevOps Engineer  
*Full Stack Developer | DevOps Engineer | Cloud & Infrastructure Engineer*

## License
MIT License. See [LICENSE](LICENSE) for details.
