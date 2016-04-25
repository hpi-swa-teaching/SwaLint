versions
version310: spec
	<version: '3.1.0' imports: #('3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'SwaLint 2015: Adding missing plugins.'.
		spec author: 'topa'.
		spec timestamp: "MetacelloPlatform current timestamp" '4/25/2016 16:33'.
		spec project: 'Refactoring-Core' with: #'stable'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-fn.45';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-fn.50';
			package: 'SwaLint-Preferences' with: 'SwaLint-Preferences-topa.16';
			package: 'SwaLint-Slime-Grease' with: 'SwaLint-Slime-Grease-topa.1';
			package: 'SwaLint-Slime-Seaside' with: 'SwaLint-Slime-Seaside-topa.1';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.40';
			yourself].
	spec for: #'pharo' do: [
		spec
			package: 'PreferenceBrowser' with: 'PreferenceBrowser-topa.51'.].
