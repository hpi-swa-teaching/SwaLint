versions
version203: spec 
	<version: '2.0.3' imports: #('2.0.3-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec 
			project: 'Refactoring-Core' with: #stable;
			package: 'SwaLint-Core' with: 'SwaLint-Core-tfel.5';
			package: 'SwaLint-PlugIns' with: 'SwaLint-PlugIns-tfel.4';
			package: 'SwaLint-Tests' with: 'SwaLint-Tests-topa.2'].