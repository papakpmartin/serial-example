Serial Example
===========

Very basic project to test getting `@serialport` running in a Node-RED Docker image basaed container.

## Development Notes

To quickly build for running on laptop:

```bash
docker build --progress plain --no-cache -t serial-example:latest .
```

To run locally without using a volume:

```bash
docker run -p 1880:1880 --rm serial-example
```

To run locally for development where changes are written immediately and only to host disk:

**BEWARE** This can totally fail if you have aa `node_modules` directory in your local folder.

```bash
docker run -p 1880:1880 -v `pwd`:/data --rm serial-example
```
