# crystal-environment [![Build Status](https://travis-ci.org/Sija/crystal-environment.svg?branch=master)](https://travis-ci.org/Sija/crystal-environment)

Adds `Crystal::Environment` module for querying `CRYSTAL_ENV` variable.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-environment:
    github: sija/crystal-environment
```

## Usage

```crystal
require "crystal-environment"

Crystal.env.name         # => "development"
Crystal.env.development? # => true
Crystal.env.production?  # => false
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/sija/crystal-environment/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [sija](https://github.com/sija) Sijawusz Pur Rahnama - creator, maintainer
