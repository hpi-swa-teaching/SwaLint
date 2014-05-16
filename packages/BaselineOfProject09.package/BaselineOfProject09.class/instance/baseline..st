baseline
baseline: spec 
	<baseline> 
	spec
		for: #'common' 
		do: [
			spec
				package: 'SwaLint-Core';
				package: 'SwaLint-Preferences';
				package: 'SwaLint-Plugins';
				package: 'SwaLint-TestClasses';
				package: 'SwaLint-Tests' with: [spec requires: #('SwaLint-Core')];
				yourself.
			spec
				group: 'default' with: #('SwaLint-Core');
				group: 'Preferences' with: #('SwaLint-Preferences');
				group: 'Plugins' with: #('SwaLint-Plugins');
				group: 'TestClasses' with: #('SwaLint-TestClasses');
				group: 'Tests' with: #('SwaLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]

"	<baseline>
	spec 
		for: #'common'
		do: [
			spec
				package: 'CCT-Core';
				package: 'CCT-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('CCT-Core');
				group: 'Tests' with: #('CCT-Tests');
				group: 'TravisCI' with: #('Tests') ]."