accessing
methods

	^ methods ifNil: [methods := self instanceMethods, self classMethods]