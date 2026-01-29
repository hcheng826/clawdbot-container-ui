# Multi-stage build for Clawdbot UI

# Build frontend
FROM node:18-alpine AS frontend-builder
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm ci
COPY frontend ./
RUN npm run build

# Build API
FROM node:18-alpine AS api-builder
WORKDIR /app/api
COPY api/package*.json ./
RUN npm ci
COPY api ./
RUN npm run build

# Final image
FROM node:18-alpine
WORKDIR /app

# Copy built frontend
COPY --from=frontend-builder /app/frontend/dist /app/frontend/dist

# Copy built API
COPY --from=api-builder /app/api/dist /app/api/dist

# Copy package.json and install production dependencies
COPY package.json ./
RUN npm ci --production

# Add Clawdbot core
COPY docker/scripts/install-clawdbot.sh ./
RUN ./install-clawdbot.sh

EXPOSE 3000
EXPOSE 8080

CMD ["npm", "start"]