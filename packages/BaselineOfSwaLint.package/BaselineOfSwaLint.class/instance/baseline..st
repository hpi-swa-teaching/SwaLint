as yet unclassified
baseline: spec 
	<baseline> 
	spec
		for: #'common' 
		do: [
			spec
				package: 'SwaLint-Core';
				package: 'SwaLint-Preferences';
				package: 'SwaLint-Plugins';
				package: 'SwaLint-Tests' with: [spec requires: #('SwaLint-Core')];
				yourself.
			spec
				group: 'default' with: #('SwaLint-Core');
				group: 'Preferences' with: #('SwaLint-Preferences');
				group: 'Plugins' with: #('SwaLint-Plugins');
				group: 'Tests' with: #('SwaLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]