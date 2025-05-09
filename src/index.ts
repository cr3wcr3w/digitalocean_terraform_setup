import { serve } from "@hono/node-server";
import { Hono } from "hono";
import { logger } from "hono/logger";
import { env } from "./env.js";

const app = new Hono();
app.use(logger());

app.get("/", (c) => {
	return c.text("Hello Hono! 1");
});

serve(
	{
		fetch: app.fetch,
		port: env.BACKEND_PORT,
	},
	(info) => {
		// biome-ignore lint/suspicious/noConsole: <explanation>
		console.log(
			`Server is running on http://localhost:${info.port} ~main branch`,
		);
	},
);
