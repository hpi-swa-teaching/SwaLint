halos
haloSpecifications
	"Answer a list of HaloSpecs that describe which halos are to be used, what they should look like, and where they should be situated"

	^ Parameters at: #HaloSpecs ifAbsent:
			[self installHaloTheme: #iconicHaloSpecifications.
			^ Parameters at: #HaloSpecs]

	"Preferences haloSpecifications"
	"Preferences resetHaloSpecifications"
