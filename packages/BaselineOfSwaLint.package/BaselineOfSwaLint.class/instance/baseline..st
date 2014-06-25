as yet unclassified
baseline: spec 
	<baseline> 
	spec
		for: #'common' 
		do: [
			spec
				package: 'SwaLint-Preferences';
				package: 'SwaLint-Core' with: [spec requires: 'SwaLint-Preferences'];
				package: 'SwaLint-PlugIns' with: [ spec requires: 'SwaLint-Core' ];
				package: 'SwaLint-TestClasses';
				package: 'SwaLint-Tests' with: [ spec requires: #('SwaLint-Core' 'SwaLint-PlugIns' 'SwaLint-TestClasses') ].
			spec
				group: 'default' with: #('SwaLint-PlugIns');
				group: 'Core' with: #('SwaLint-Core');
				group: 'PlugIns' with: #('SwaLint-PlugIns');
				group: 'Tests' with: #('SwaLint-Tests')].