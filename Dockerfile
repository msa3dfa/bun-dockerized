FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://bun.sh/install | bash && \
	    export BUN_INSTALL="$HOME/.bun" && \
	    export PATH="$BUN_INSTALL/bin:$PATH"

COPY . .

CMD bun run ./index.tsx
