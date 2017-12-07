versions
version300: spec
	<version: '3.0.0' imports: #('3.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'SwaLint 2015'.
		spec author: 'topa'.
		spec timestamp:  '4/20/2015 12:03'."MetacelloPlatform current timestamp "
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-topa.42';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-topa.44';
			package: 'SwaLint-Preferences' with: 'SwaLint-Preferences-topa.16';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.40';
			yourself].
	spec for: #'pharo' do: [
		spec
			package: 'PreferenceBrowser' with: 'PreferenceBrowser-topa.51'.].
