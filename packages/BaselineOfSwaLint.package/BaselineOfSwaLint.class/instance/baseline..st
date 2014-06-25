as yet unclassified
baseline: spec 
	<baseline>
	
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
			package: 'SwaLint-Preferences';
			package: 'SwaLint-Core' with: [spec requires: #('Refactoring-Core' 'SwaLint-Preferences')];
			package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
			package: 'SwaLint-TestClasses';
			package: 'SwaLint-Tests' with: [ spec requires: #('SwaLint-Core' 'SwaLint-PlugIns SwaLint-TestClasses') ].
		spec
			group: 'default' with: #('SwaLint-PlugIns');
			group: 'Core' with: #('SwaLint-Core');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
			group: 'Tests' with: #('SwaLint-Tests')].
	spec for: #'pharo' do: [
		spec
			package: 'PreferenceBrowser';
			package: 'SwaLint-Preferences' with: [spec requires: 'PreferenceBrowser']].
	spec for: #'pharo1.2.x' do: [
		spec 
			preLoadDoIt: #preLoadPharo200;
			postLoadDoIt: #postLoadPharo200].