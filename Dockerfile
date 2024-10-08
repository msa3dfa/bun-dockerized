FROM oven/bun:latest

COPY . .

CMD bun run ./server.tsx
