# Blockchain Enterprise

Monorepo for TypeScript apps, Solidity (EVM, Foundry) and Rust (CosmWasm) contracts.

## Quick start

```sh
make setup   # install deps
make up      # local anvil, postgres, redis
make test    # all tests
```

## Layout

| Path | What |
|------|------|
| `contracts/evm` | Foundry project (Solidity) |
| `contracts/cosmwasm` | Cargo workspace (Rust) |
| `apps/` | Applications (api, web, indexer) |
| `packages/` | Shared tsconfig, eslint config, types |
| `infra/` | docker-compose for local services |
| `docs/` | Architecture, ADRs, onboarding |

See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md).
