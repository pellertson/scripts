BEGIN {
	defCount = 1
}

$1 ~ /^\[\]\.shortdef\[\]$/ {
	defs[defCount++] = $3
}

$1 ~ /^\[\]\.meta\.id$/ {
	word = $3
}

END {
	printf("Word: %s\n", word)
	if (defCount > 1) {
		print("Definitions:")
	} else {
		print("Definition:")
	}

	for (i = 1; i <= defCount; i++) {
		printf("\t-: %s\n", defs[i])
	}
}
