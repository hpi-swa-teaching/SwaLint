map - 2. code quality
catCodeQuality
	<sl2TestCategory>

	^ (self makeCategoryWithPath: #('code quality'))
		sortKey: 2;
		description: 'Tests that assess the local quality of your code. This includes general coding styles, superfluous and unncessary complex code, and others. Most tests here are designed to be precise (i.e., to produce few false positive results), but some of them are opinionated. There are many good reasons for not "fixing" all of them blindly, and it is not recommended to achieve a "green bar". Always reflect whether tests make sense in your particular situation and align them with your inidividual coding styles.';
		yourself