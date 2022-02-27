# opa-playground

## Test

```
./batect test
```

## Run

```
./batect run
```

This starts up a nginx container to serve [OPA Bundle](https://www.openpolicyagent.org/docs/latest/management-bundles/) that contains policy and data file from `./opa`. It then starts up opa container in server mode that pulls bundle from nginx

Run `./scripts/query.sh` to test querying OPA server REST API
