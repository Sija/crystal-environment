# crystal-environment [![Build Status](https://travis-ci.org/Sija/crystal-environment.svg?branch=master)](https://travis-ci.org/Sija/crystal-environment) [![Releases](https://img.shields.io/github/release/Sija/crystal-environment.svg)](https://github.com/Sija/crystal-environment/releases) [![License](https://img.shields.io/github/license/Sija/crystal-environment.svg)](https://github.com/Sija/crystal-environment/blob/master/LICENSE)

Adds `Crystal::Environment` module for querying `CRYSTAL_ENV` variable in a
compile-time safe manner.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-environment:
    github: Sija/crystal-environment
```

## Usage

```crystal
require "crystal-environment"

Crystal.env.name         # => "development"
Crystal.env.development? # => true
Crystal.env.production?  # => false

# Defining custom environments

Crystal.env.staging? # Throws compile-time error
Crystal::Environment.setup %i(staging)
Crystal.env.staging? # => true
```

## Contributing

1. [Fork it](https://github.com/Sija/crystal-environment/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new [Pull Request](https://github.com/Sija/crystal-environment/pulls)

## Contributors

- [@Sija](https://github.com/Sija) Sijawusz Pur Rahnama - creator, maintainer
