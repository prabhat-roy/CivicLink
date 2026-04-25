# Proto — CivicLink

Single source of truth for service contracts. Every gRPC service used in the
platform has its `.proto` definition here, organised by business domain.

## Layout

```
proto/
├── buf.yaml          ← Buf module config
├── buf.gen.yaml      ← Codegen targets (Go, Java, Python)
├── common/           ← Shared types (Citizen, Address, Money, Pagination, ConsentToken)
└── <domain>/
    └── <service>.proto
```

## Codegen

```bash
make proto    # runs `buf generate` from repo root
```

Generated bindings land in `proto/gen/{go,java,python}/...`. Each service imports
the bindings from there.

## Conventions

- One `.proto` file per service, containing one `service` and its messages
- Package: `civiclink.<domain>.v1`
- Versioning: `v1`, `v2` — break only via new package
- Common types live in `common/` and are imported via `civiclink.common.v1`