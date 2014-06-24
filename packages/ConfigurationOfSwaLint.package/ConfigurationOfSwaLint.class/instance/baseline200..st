baselines
baseline200: spec 
	<version: '2.0.0-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://www.squeaksource.com/SwaLint';
			description: 'Initial Baseline for SwaLint 2';
			postLoadDoIt: #postLoadFor200.
		"Requirements"	
		spec
			package: 'AST-Core' with: [spec
				repository: 'http://www.squeaksource.com/rb'];
			package: 'Refactoring-Core' with: [spec 
				requires: 'AST-Core';
				repository: 'http://www.squeaksource.com/rb'].
		spec 
			package: 'SwaLint-Core' with: [spec requires: #('AST-Core' 'Refactoring-Core')]; 
			package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
			package: 'SwaLint-Tests' with: [ spec requires: #('SwaLint-Core' 'SwaLint-PlugIns') ].
		spec
			group: 'default' with: #('PlugIns');
			group: 'Core' with: #('SwaLint-Core');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
			group: 'Tests' with: #('SwaLint-Tests')].
	spec for: #pharo do: [
		spec 
			preLoadDoIt: #preLoadPharo200;
			postLoadDoIt: #postLoadPharo200].