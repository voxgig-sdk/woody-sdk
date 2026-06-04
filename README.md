# Woody SDK

Fetch random photos of Woody the cat over a tiny CORS-enabled REST API

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Woody API

Woody API is a small public REST service that serves photos of Woody, a cat. It is hosted at [woody.cat](https://woody.cat) and exposes its image endpoints under the `purr.woody.cat` subdomain.

What you get from the API:

- A random Woody photo via `GET https://purr.woody.cat`
- A specific photo by ID via `GET https://purr.woody.cat/{id}` (for example, `GET https://purr.woody.cat/1`)

Both endpoints are CORS-enabled, so the service can be called directly from browser-side code. According to the [freepublicapis.com listing](https://freepublicapis.com/woody-api), the API requires no authentication and has been reliably available with sub-second response times.

## Try it

**TypeScript**
```bash
npm install woody
```

**Python**
```bash
pip install woody-sdk
```

**PHP**
```bash
composer require voxgig/woody-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/woody-sdk/go
```

**Ruby**
```bash
gem install woody-sdk
```

**Lua**
```bash
luarocks install woody-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { WoodySDK } from 'woody'

const client = new WoodySDK({})

```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o woody-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "woody": {
      "command": "/abs/path/to/woody-mcp"
    }
  }
}
```

## Entities

The API exposes 2 entities:

| Entity | Description | API path |
| --- | --- | --- |
| **Api** | Top-level grouping for the Woody photo service hosted at `https://purr.woody.cat`. | `/api/{id}` |
| **Random** | A randomly selected Woody photo returned by `GET https://purr.woody.cat`, or a specific one via `GET https://purr.woody.cat/{id}`. | `/api/random` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from woody_sdk import WoodySDK

client = WoodySDK({})


# Load a specific api
api, err = client.Api(None).load(
    {"id": "example_id"}, None
)
```

### PHP

```php
<?php
require_once 'woody_sdk.php';

$client = new WoodySDK([]);


// Load a specific api
[$api, $err] = $client->Api(null)->load(
    ["id" => "example_id"], null
);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/woody-sdk/go"

client := sdk.NewWoodySDK(map[string]any{})

```

### Ruby

```ruby
require_relative "Woody_sdk"

client = WoodySDK.new({})


# Load a specific api
api, err = client.Api(nil).load(
  { "id" => "example_id" }, nil
)
```

### Lua

```lua
local sdk = require("woody_sdk")

local client = sdk.new({})


-- Load a specific api
local api, err = client:Api(nil):load(
  { id = "example_id" }, nil
)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = WoodySDK.test()
const result = await client.Api().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = WoodySDK.test(None, None)
result, err = client.Api(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = WoodySDK::test(null, null);
[$result, $err] = $client->Api(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Api(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = WoodySDK.test(nil, nil)
result, err = client.Api(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Api(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Woody API

- Upstream: [https://woody.cat](https://woody.cat)

---

Generated from the Woody API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
