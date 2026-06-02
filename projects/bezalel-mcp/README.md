# bezalel-mcp

MCP server for the Bezalel project, providing tools to control an Arduino-connected display via the [Model Context Protocol](https://modelcontextprotocol.io).

## Configuration

The bridge server URL is set via the `BEZALEL_BRIDGE_URL` environment variable. If not set, it defaults to `http://localhost:8080`.

In `.mcp.json`, pass the env var like this:

```json
{
  "mcpServers": {
    "bezalel-mcp": {
      "command": "node",
      "args": ["projects/bezalel-mcp/dist/index.js"],
      "env": {
        "BEZALEL_BRIDGE_URL": "http://192.168.1.100:8080"
      }
    }
  }
}
```

## Prerequisites

A bridge HTTP server must be running at the configured URL that accepts POST requests to the `/move` endpoint with a cell reference (e.g. `a1`, `B2`, `c3`) as the plain-text body. This server bridges MCP tool calls to the Arduino display hardware.

## Tools

- **update_cell** — Updates a cell on the Arduino-connected display. Accepts a `cell` parameter with a cell reference like `A3`, `b2`, `c1`.

## Install

```bash
cd projects/bezalel-mcp
npm install
npm run build
```

## Usage with Claude Code

Add a `.mcp.json` at the repo root (already done for this project):

```json
{
  "mcpServers": {
    "bezalel-mcp": {
      "command": "node",
      "args": ["projects/bezalel-mcp/dist/index.js"],
      "env": {
        "BEZALEL_BRIDGE_URL": "http://localhost:8080"
      }
    }
  }
}
```

On next launch, Claude Code will prompt to approve the new server. Once approved, the `update_cell` tool is available directly in the session.

### In-session usage

Once the MCP server is connected, ask Claude to update a cell:

```
> update a2
```

Claude will invoke the `update_cell` tool, which sends the cell reference to the bridge server and reports the result.

## Run standalone

The server communicates over stdio and can be connected to any MCP client:

```bash
npm start
```

## License

Code in this directory is licensed under the Apache License 2.0.
