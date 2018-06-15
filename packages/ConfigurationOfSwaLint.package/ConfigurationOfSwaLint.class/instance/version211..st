versions
version211: spec
	<version: '2.1.1' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '2.1.1: Method source cleaning fix and Browse button for results UI'.
		spec author: 'topa'.
		spec timestamp:  '11/26/2012 19:45'."MetacelloPlatform current timestamp "
		spec project: 'Refactoring-Core' with: '1.7'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-topa.17';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-topa.11';
			package: 'SwaLint-Preferences' with: 'SwaLint-Preferences-tfel.3';
			package: 'PreferenceBrowser' with: 'PreferenceBrowser-topa.51';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.2'. ].
