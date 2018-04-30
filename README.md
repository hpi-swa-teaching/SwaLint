SwaLint [![Build Status][travis_badge]][travis] [![Build status][appveyor_badge]][appveyor][![Coverage Status][coveralls_badge]][coveralls]

===================
A code critics tool for Smalltalk projects. Install it with:

## Installation

1. Make sure you have [metacello-work](https://github.com/dalehenrich/metacello-work) installed.
2. Load the project with:
```Smalltalk
  Metacello new
    configuration: 'SwaLint';
    repository: 'github://hpi-swa-teaching/SwaLint:master/packages';
    onConflict: [:ex | ex allow];
    load
```
Now you can open the **SwaLint Code Critics** via *Apps*.

[appveyor]: https://ci.appveyor.com/project/hpi-swa-teaching/swalint
[appveyor_badge]: https://ci.appveyor.com/api/projects/status/uj2j9trw2x6yq9iy?svg=true
[travis]: https://travis-ci.org/hpi-swa-teaching/SwaLint
[travis_badge]: https://travis-ci.org/hpi-swa-teaching/SwaLint.svg?branch=develop
[coveralls]: https://coveralls.io/github/hpi-swa-teaching/SwaLint?branch=develop
[coveralls_badge]: https://coveralls.io/repos/github/hpi-swa-teaching/SwaLint/badge.svg?branch=develop
