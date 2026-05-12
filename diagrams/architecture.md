# Homelab Architecture Diagram

```mermaid
flowchart LR
    User[User Devices\nLaptop / Phone] --> Router[Home Router / LAN]
    Router --> Proxy[Reverse Proxy]

    Proxy --> WebUI[Open WebUI]
    WebUI --> Ollama[Ollama Model Server]

    Proxy --> Portfolio[Portfolio Website]
    Proxy --> Nextcloud[Nextcloud]
    Nextcloud --> PG[(PostgreSQL)]
    Nextcloud --> Redis[(Redis)]

    Proxy --> N8N[n8n (Future)]

    Ollama --> VolAI[(AI Data Volume)]
    Nextcloud --> VolCloud[(Cloud Data Volume)]
    N8N --> VolN8N[(Automation Volume)]
```
