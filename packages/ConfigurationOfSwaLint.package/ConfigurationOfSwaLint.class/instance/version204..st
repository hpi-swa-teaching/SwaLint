versions
version204: spec
	<version: '2.0.4' imports: #('2.0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: '2.0.4 (): Bump'.
		spec author: 'tfel'.
		spec timestamp: '7/22/2011 12:22'.
		spec project: 'Refactoring-Core' with: '1.7'.
		spec 
			package: 'SwaLint-Core' with: 'SwaLint-Core-tfel.5';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-tfel.6';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.2'. ].
