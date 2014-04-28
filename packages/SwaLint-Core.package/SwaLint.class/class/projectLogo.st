accessing
projectLogo
	"the SwaLint logo"
	
	^ icon ifNil:  [icon := Form fromBinaryStream: 
		(Base64MimeConverter mimeDecodeToBytes: self projectLogoContents readStream)]