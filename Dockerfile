FROM apline/curl:latest

RUN curl -fsSL https://bun.sh/install | bash && \
	    export BUN_INSTALL="$HOME/.bun" && \
	    export PATH="$BUN_INSTALL/bin:$PATH"

COPY . .

CMD bun run ./index.tsx
