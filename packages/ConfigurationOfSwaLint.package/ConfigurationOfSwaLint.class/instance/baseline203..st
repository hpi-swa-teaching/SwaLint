baselines
baseline203: spec 
	<version: '2.0.3-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://www.squeaksource.com/SwaLint';
			description: 'Initial Baseline for SwaLint 2';
			postLoadDoIt: #postLoadFor200.
		"Requirements"
		spec project: 'Refactoring-Core' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec 
			package: 'SwaLint-Core' with: [spec requires: #('Refactoring-Core')]; 
			package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
			package: 'SwaLint-Tests' with: [ spec requires: #('SwaLint-Core' 'SwaLint-PlugIns') ].
		spec
			group: 'default' with: #('SwaLint-PlugIns');
			group: 'Core' with: #('SwaLint-Core');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
			group: 'Tests' with: #('SwaLint-Tests')].
	spec for: #pharo do: [
		spec 
			preLoadDoIt: #preLoadPharo200;
			postLoadDoIt: #postLoadPharo200].