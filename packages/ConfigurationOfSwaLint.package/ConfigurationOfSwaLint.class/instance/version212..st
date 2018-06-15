versions
version212: spec
	<version: '2.1.2' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '2.1.2: Pref fixes and Plugins'.
		spec author: 'topa'.
		spec timestamp:  '4/15/2014 17:19'."MetacelloPlatform current timestamp "
		spec project: 'Refactoring-Core' with: '1.7'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-topa.18';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-topa.12';
			package: 'SwaLint-Preferences' with: 'SwaLint-Preferences-topa.5';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.2';
			yourself].
	spec for: #'pharo' do: [
		spec
			package: 'PreferenceBrowser' with: 'PreferenceBrowser-topa.51'.].
