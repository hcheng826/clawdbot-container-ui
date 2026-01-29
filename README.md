# Clawdbot Container UI

A visual dashboard and containerized deployment solution for Clawdbot.

## Overview

This project aims to democratize access to Clawdbot by providing:

1. **Docker Containerization** - Easy deployment without technical complexity
2. **Visual UI Dashboard** - Manage your Clawdbot instance through a user-friendly interface
3. **Relationship Intelligence** - Visualize and leverage your conversation context and relationships
4. **One-click Deployment** - Get started in minutes with zero configuration

## Features

- **Visual Relationship Mapping**: See connections between people and topics at a glance
- **Contextual Dashboards**: Organize information by project, client, or relationship
- **Simplified Setup**: True one-click deployment with guided configuration
- **Actionable Intelligence**: Turn relationship data into follow-up recommendations
- **Team Collaboration**: Share context and insights with your team

## Getting Started

### Prerequisites

- Docker and Docker Compose
- Modern web browser

### Quick Start

```bash
# Clone the repository
git clone git@github.com:hcheng826/clawdbot-container-ui.git
cd clawdbot-container-ui

# Launch with docker-compose
docker-compose up -d

# Access the UI at http://localhost:3000
```

## Project Structure

- `/frontend` - Next.js-based user interface
- `/api` - Backend API server
- `/docker` - Docker-related files for containerization
- `/docs` - Documentation

## Development

```bash
# Start development environment
npm run dev

# Run tests
npm test

# Build for production
npm run build
```

## Contributing

Contributions are welcome! Please check out our [contributing guide](./CONTRIBUTING.md) to get started.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Acknowledgments

- Based on [Clawdbot](https://github.com/clawdbot/clawdbot)
- Inspired by the need for accessible AI tools for everyone