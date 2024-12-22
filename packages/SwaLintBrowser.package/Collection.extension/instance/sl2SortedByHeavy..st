*SwaLintBrowser-UI-sorting
sl2SortedByHeavy: propertyBlock

	^ ((self collect: [:ea | ea -> (propertyBlock value: ea)])
		sorted: [:assoc | assoc value] asSortFunction)
			collect: [:assoc | assoc key]