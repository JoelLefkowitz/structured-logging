# Structured logging

Log with timestamps and levels.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/structured-logging/review.yaml)
![Version](https://pursuit.purescript.org/packages/purescript-structured-logging/badge)
![Quality](https://img.shields.io/codacy/grade/d87e4de169cb484180a7c1c74dd41166)

## Installing

```bash
spago install structured-logging
```

## Usage

```purs
import Node.Logger as Logger

Logger.info "message"
```

This will log with a timestamp and info log level:

```json
{"timestamp":"2025-01-01T00:00:00.000Z","level":"INFO","message":"message"}
```

The log levels are defined as:

```purs
data LogLevel = INFO | WARN | ERROR
```

The log methods have the familiar `MonadEffect` classes:

```purs
info ∷ ∀ m. MonadEffect m ⇒ String → m Unit
warn ∷ ∀ m. MonadEffect m ⇒ String → m Unit
error ∷ ∀ m. MonadEffect m ⇒ String → m Unit
```

For convenience `log` is exported as an alias for `info`:

```purs
log ∷ ∀ m. MonadEffect m ⇒ String → m Unit
```

## Documentation

Documentation and more detailed examples are hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-structured-logging).

## Tooling

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
yarn lint
```

### Formatters

To run formatters:

```bash
yarn format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
