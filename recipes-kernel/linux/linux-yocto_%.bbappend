FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE:pocketbeagle = "pocketbeagle"

SRC_URI += " \
	file://pocketbeagle-kmeta;type=kmeta;name=pocketbeagle-kmeta;destsuffix=pocketbeagle-kmeta \
	file://pocketbeagle.scc \
	"
