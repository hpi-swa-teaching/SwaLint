preferences
createSARFile

	| package zip mczStream workingCopy version |

	package := self name.

	zip := ZipArchive new.
	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	version := workingCopy newVersion.
	version fileOutOn: mczStream.
	(zip addString: mczStream contents as: package , '.mcz') desiredCompressionLevel: 0.
	zip addString: 'self fileInMonticelloZipVersionNamed:
	    ''' , package , '.mcz''.' as: 'install/preamble'.
	zip writeToFileNamed: package , '.sar'.