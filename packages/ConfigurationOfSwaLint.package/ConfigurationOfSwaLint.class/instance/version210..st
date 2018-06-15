versions
version210: spec
	<version: '2.1.0' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '2.1.0: Release with preliminary Pharo-1.3+ support'.
		spec author: 'tfel'.
		spec timestamp: '5/26/2012 02:02'.
		spec project: 'Refactoring-Core' with: '1.7'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-tfel.16';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-tfel.8';
			package: 'SwaLint-Preferences' with: 'SwaLint-Preferences-tfel.3';
			package: 'PreferenceBrowser' with: 'PreferenceBrowser-tfel.50';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.2'. ].
