import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";

const BRIDGE_URL = process.env["BEZALEL_BRIDGE_URL"] || "http://localhost:8080";

const server = new McpServer({
  name: "bezalel-mcp",
  version: "0.1.0",
});

server.tool(
  "update_cell",
  "Updates a cell on the Arduino-connected display. Receives a cell reference like A3, b2, c1.",
  {
    cell: z.string().describe("Cell reference (e.g. A3, b2, c1)."),
  },
  async ({ cell }) => {
    const response = await fetch(`${BRIDGE_URL}/move`, {
      method: "POST",
      headers: { "Content-Type": "text/plain" },
      body: cell,
    });

    if (!response.ok) {
      return {
        content: [
          {
            type: "text",
            text: `Failed to update cell ${cell}: HTTP ${response.status} ${response.statusText}`,
          },
        ],
      };
    }

    return {
      content: [
        {
          type: "text",
          text: `Cell updated: ${cell}`,
        },
      ],
    };
  },
);

async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
}

main().catch(console.error);
