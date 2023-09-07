import os
import rand

const (
	output_search_terms = [
		'Usage',
		'Description',
		'Options',
		'-p, --shape <string>',
		'-z, --size <int>',
		'-m, --symbol <string>',
		'-h, --help',
		'--version',
	]
)

fn test_help() {
	flags := ['--help', '-h']

	for flag in flags {
		result := os.execute_or_panic('${os.quoted_path(@VEXE)} -o ${rand.ulid()} run . ${flag}')

		assert result.exit_code == 0
		for term in output_search_terms {
			assert result.output.contains(term)
		}
	}
}
