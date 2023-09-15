let count = 0;

Bun.serve({
  fetch(req: Request) {
    return new Response(`Reloaded ${count++} times!!`);
  },
  port: Bun.env.PORT || 3000,
});
