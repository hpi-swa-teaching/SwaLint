SwaLint [![Build Status](https://travis-ci.org/hpi-swa-teaching/SwaLint.svg?branch=develop)](https://travis-ci.org/hpi-swa-teaching/SwaLint)
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
