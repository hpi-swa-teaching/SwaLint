I am the test coordinator. As well, I store all loaded plugins and copies of all test datas.

I may be run in two ways: 
	- by running myself on an SLEnvironment using 
	  'SLTestRunner >> runOnEnvironment: aSLEnvironment' 
	- by running myself on test objects and tests using 
	  'aSLTestRunner runOnTests: tests andTestObjects: testobjects'.

The second way to call me is prefered for testing the plugins. Don't call me directly if you don't know what you're doing.