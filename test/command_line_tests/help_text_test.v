import os

fn test_help() {
	result := os.execute_or_panic('${os.quoted_path(@VEXE)} run . --help')

	output_search_terms := [
		'Usage',
		'Description',
		'Options',
		'-p, --shape <string>',
		'-z, --size <int>',
		'-m, --symbol <string>',
		'-h, --help',
		'--version',
	]

	assert result.exit_code == 0
	assert result.output.contains('Usage')
	for term in output_search_terms {
		assert result.output.contains(term)
	}
}
