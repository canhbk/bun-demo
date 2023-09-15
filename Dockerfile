FROM oven/bun:1.0.1

WORKDIR /app

COPY package.json .
COPY bun.lockb .

RUN bun install

COPY . .

RUN bun run build

ENTRYPOINT ["bun", "start"]
