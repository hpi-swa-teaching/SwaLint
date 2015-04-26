baselines
baseline30: spec 
	<version: '3.0-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://www.squeaksource.com/SwaLint';
			description: 'Baseline for SwaLint 3';
			postLoadDoIt: #postLoadFor200.
		"Requirements"
		spec 
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'Grease' with: [
				spec
					className: 'ConfigurationOfGrease';
					versionString: #'stable';
					loads: #('Slime');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'];
			project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					loads: #('Development');
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
					repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec
			package: 'SwaLint-Preferences';
			package: 'SwaLint-Core' with: [spec requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
			package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
			package: 'SwaLint-Slime-Grease' with: [spec requires: #('SwaLint-PlugIns' 'Grease')];
			package: 'SwaLint-Slime-Seaside' with: [spec requires: #('SwaLint-PlugIns' 'Seaside3')];
			package: 'SwaLint-Tests' with: [ spec requires: #('SwaLint-Core' 'SwaLint-PlugIns') ].
		spec
			group: 'default' with: #('PlugIns');
			group: 'portability' with: #('PlugIns' 'SwaLint-Slime-Grease');
			group: 'web' with: #('portability' 'SwaLint-Slime-Seaside');
			group: 'Core' with: #('SwaLint-Core');
			group: 'All' with: #('Tests' 'web');
			group: 'PlugIns' with: #('SwaLint-PlugIns');
			group: 'Tests' with: #('SwaLint-Tests');
			group: 'TravisCI' with: #('Tests')].
	spec for: #'pharo' do: [
		spec
			package: 'PreferenceBrowser';
			package: 'SwaLint-Preferences' with: [spec requires: 'PreferenceBrowser']].
	spec for: #'pharo1.2.x' do: [
		spec 
			preLoadDoIt: #preLoadPharo200;
			postLoadDoIt: #postLoadPharo200].