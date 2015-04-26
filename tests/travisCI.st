| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  configuration: 'SwaLint';
  repository: 'filetree://', gitPath, '/SwaLint/packages';
  get.

Metacello new
  configuration: 'SwaLint';
  repository: 'filetree://', gitPath, '/SwaLint/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #('ConfigurationOfSwaLint')
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
