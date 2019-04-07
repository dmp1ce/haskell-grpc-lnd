# gRPC LND client (WIP)

This repository offers a native Haskell client to LND over gRPC.

The repository is split into two parts:
- the generated gRPC data types and typeclass constraints
- a client library that projects can import and which can also be useful in GHCi

Most users will depend on the client library, which itself depends on the
generated data types. A reason to split code this way is to simplify future
change where code-generation from protobufs is streamlined in the build tool.
Another reason is to create some nomenclature for generated GRPC data types and
typeclasses.

## TODO

Currently only unlockWallet command is implemented.

- Implement remote calls beyond WalletUnlocker.
