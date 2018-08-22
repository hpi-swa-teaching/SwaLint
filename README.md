SwaLint [![Build Status][travis_badge]][travis] [![Build status][appveyor_badge]][appveyor] <!-- [![Coverage Status][coveralls_badge]][coveralls] -->
===================

<!-- ## Checkout the master branch for the stable version of SwaLint! -->

A code critics tool for Smalltalk projects. After installation you can open the **SwaLint Code Critics** via *Apps*.

**Please visit the [SwaLint wiki](https://github.com/hpi-swa-teaching/SwaLint/wiki) for further information, future plans and technical advice.**

## Installation

### Latest release

There are two ways of installing the latest release. You can either use a SAR file or Metacello.

#### SAR file
Go to the [latest release of SwaLint](https://github.com/hpi-swa-teaching/SwaLint/releases/latest), download the .sar file, drag and drop it into your image and choose "install SAR".  

#### Metaclleo
1. Make sure you have [metacello](https://github.com/Metacello/metacello) installed.
2. Load the project with (it might ask you to click "Proceed" several times):
```Smalltalk
[Metacello new
  baseline: 'SwaLint';
  repository: 'github://hpi-swa-teaching/SwaLint:release/packages';
  get;
  load: #default]
    on: MetacelloSkipDirtyPackageLoad
    do: [:e | e resume: false]
```



### Latest develop version

#### Metaclleo
1. Make sure you have [metacello](https://github.com/Metacello/metacello) installed.
2. Load the project with (it might ask you to click "Proceed" several times):
```Smalltalk
[Metacello new
  baseline: 'SwaLint';
  repository: 'github://hpi-swa-teaching/SwaLint:develop/packages';
  get;
  load: #default]
    on: MetacelloSkipDirtyPackageLoad
    do: [:e | e resume: false]
 ```
 
[appveyor]: https://ci.appveyor.com/project/hpi-swa-teaching/swalint
[appveyor_badge]: https://ci.appveyor.com/api/projects/status/uj2j9trw2x6yq9iy?svg=true
[travis]: https://travis-ci.org/hpi-swa-teaching/SwaLint
[travis_badge]: https://travis-ci.org/hpi-swa-teaching/SwaLint.svg?branch=develop
[coveralls]: https://coveralls.io/github/hpi-swa-teaching/SwaLint?branch=develop
[coveralls_badge]: https://coveralls.io/repos/github/hpi-swa-teaching/SwaLint/badge.svg?branch=develop
