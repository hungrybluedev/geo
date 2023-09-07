import os
import rand

struct RunConfig {
	shape  string
	size   int    = 5
	symbol string = '*'
	output []string
}

const (
	all_options_test_cases = [
		RunConfig{
			shape: 'square'
			size: 5
			symbol: '|'
			output: ['|||||', '|||||', '|||||', '|||||', '|||||']
		},
		RunConfig{
			shape: 'pyramid'
			size: 3
			symbol: '^'
			output: ['  ^', ' ^^^', '^^^^^']
		},
		RunConfig{
			shape: 'diamond'
			size: 4
			symbol: '*'
			output: ['   *', '  ***', ' *****', '*******', ' *****', '  ***', '   *']
		},
	]
	shape_only_test_cases = [
		RunConfig{
			shape: 'square'
			output: ['*****', '*****', '*****', '*****', '*****']
		},
		RunConfig{
			shape: 'pyramid'
			output: ['    *', '   ***', '  *****', ' *******', '*********']
		},
		RunConfig{
			shape: 'left-triangle'
			output: ['*', '**', '***', '****', '*****']
		},
	]
)

fn test_all() {
	// Test all options
	for case in all_options_test_cases {
		result := os.execute_or_panic('${os.quoted_path(@VEXE)} -o ${rand.ulid()} run . --shape ${case.shape} --size ${case.size} --symbol "${case.symbol}"')

		assert result.exit_code == 0
		assert result.output.split_into_lines() == case.output
	}
	// Test shapes only
	for case in shape_only_test_cases {
		result := os.execute_or_panic('${os.quoted_path(@VEXE)} -o ${rand.ulid()} run . --shape ${case.shape}')

		assert result.exit_code == 0
		assert result.output.split_into_lines() == case.output
	}
}
