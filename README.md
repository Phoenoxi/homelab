# AI Homelab Portfolio

A self-hosted AI homelab project for learning Linux, Docker, networking, automation, and practical AI infrastructure.

This repository is the documentation and configuration hub for my hands-on homelab journey.

## Project Overview

This homelab focuses on building and operating a personal infrastructure stack on local hardware.

Core goals:
- Run a local AI assistant with **Ollama + Open WebUI**
- Host a personal **portfolio website**
- Host a personal cloud with **Nextcloud**
- Add workflow automation with **n8n**
- Learn DevOps fundamentals: Docker, reverse proxying, SSH, networking, and server operations
- Document setup decisions, mistakes, and lessons learned

## Hardware Specs

> Update with your exact machine details.

- **Host Machine:** Old desktop PC / repurposed system
- **CPU:** _(example: Intel i5 6th gen)_
- **RAM:** _(example: 16 GB)_
- **Storage:** _(example: 512 GB SSD + 1 TB HDD)_
- **OS:** Linux _(planned: Ubuntu Server / Debian)_
- **Network:** Home LAN + router port management

## Planned Services

- **AI Stack:** Ollama + Open WebUI
- **Portfolio:** Static site behind reverse proxy
- **Cloud:** Nextcloud (with database + cache)
- **Automation:** n8n (planned in later phase)
- **Infrastructure Support:** Reverse proxy, Docker volumes, backups, monitoring

## Learning Goals

- Linux server administration and SSH workflows
- Docker and Docker Compose lifecycle management
- Networking basics (ports, DNS, LAN access, reverse proxy)
- Security fundamentals (firewall, secrets, updates, least privilege)
- Service observability and troubleshooting
- Infrastructure documentation habits

## Architecture

See full diagrams in [`/diagrams/architecture.md`](/diagrams/architecture.md).

High-level flow:
- Clients (laptop/phone) connect over LAN
- Reverse proxy routes traffic to self-hosted services
- Services run in isolated Docker Compose stacks
- Persistent data stored in named volumes / host mounts

## Repository Structure

```text
/docs           # Setup docs, guides, and roadmap
/docker         # Docker Compose starter stacks
/scripts        # Helper scripts for common operations
/screenshots    # UI screenshots and setup snapshots
/diagrams       # Architecture diagrams in markdown/mermaid
/notes          # Personal setup notes and learning logs
```

## Progress Checklist

- [x] Repository scaffold and documentation structure created
- [x] Initial architecture diagram and starter setup notes
- [x] Compose starter files for AI, portfolio, Nextcloud, and n8n
- [ ] Install and harden Linux host
- [ ] Deploy reverse proxy and TLS strategy
- [ ] Deploy Ollama + Open WebUI stack
- [ ] Deploy portfolio site
- [ ] Deploy Nextcloud stack
- [ ] Deploy n8n workflows
- [ ] Add backups, monitoring, and maintenance routines

## Future Improvements

- Automated backups and restore testing
- Monitoring stack (Prometheus/Grafana or lightweight alternatives)
- Single sign-on experiments
- CI checks for docs and Compose validation
- GPU acceleration and model performance benchmarking

## Getting Started

1. Review [`docs/setup-notes.md`](/docs/setup-notes.md)
2. Copy each service `.env.example` to `.env` and set real values
3. Start a service stack from `/docker/<service>`:
   ```bash
   docker compose up -d
   ```
4. Track progress in `/notes`

---

Built as a portfolio-style infrastructure project for a computer science and AI student.
