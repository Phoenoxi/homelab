# Setup Notes (Example)

## Initial Host Prep
- Update system packages
- Install Docker engine + Compose plugin
- Add your user to the docker group
- Reboot and verify `docker ps`

## Service Deployment Pattern
1. Enter service folder under `/docker`
2. Copy `.env.example` to `.env`
3. Change secrets, ports, and host paths
4. Run `docker compose up -d`
5. Verify health and logs

## Example Commands
```bash
# show running containers
docker ps

# follow logs for a container
docker logs -f open-webui

# stop stack
docker compose down
```

## Notes to Capture While Learning
- What broke?
- How did you debug it?
- What should be automated next time?
