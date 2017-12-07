SwaLint [![Build Status](https://travis-ci.org/hpi-swa-teaching/SwaLint.svg)](https://travis-ci.org/hpi-swa-teaching/SwaLint)
===================
A code critics tool for Smalltalk projects. Install it with:

```Smalltalk
  Metacello new
    configuration: 'SwaLint';
    repository: 'github://hpi-swa-teaching/SwaLint:master/packages';
    onConflict: [:ex | ex allow];
    load
```
