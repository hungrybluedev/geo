module geometry_tests

import os

struct RunConfig {
	shape  string
	size   int    = 5
	symbol string = '*'
	output string
}

const (
	all_options_test_cases = [
		RunConfig{
			shape: 'square'
			size: 5
			symbol: '|'
			output: '|||||
|||||
|||||
|||||
|||||
'
		},
		RunConfig{
			shape: 'pyramid'
			size: 3
			symbol: '^'
			output: '  ^
 ^^^
^^^^^
'
		},
		RunConfig{
			shape: 'diamond'
			size: 4
			symbol: '*'
			output: '   *
  ***
 *****
*******
 *****
  ***
   *
'
		},
	]
	shape_only_test_cases = [
		RunConfig{
			shape: 'square'
			output: '*****
*****
*****
*****
*****
'
		},
		RunConfig{
			shape: 'pyramid'
			output: '    *
   ***
  *****
 *******
*********
'
		},
		RunConfig{
			shape: 'left-triangle'
			output: '*
**
***
****
*****
'
		},
	]
)

fn test_all_options() {
	for case in geometry_tests.all_options_test_cases {
		result := os.execute_or_panic('${@VEXE} run . --shape $case.shape --size $case.size --symbol "$case.symbol"')

		assert result.exit_code == 0
		assert result.output == case.output
	}
}

fn test_shapes_only() {
	for case in geometry_tests.shape_only_test_cases {
		result := os.execute_or_panic('${@VEXE} run . --shape $case.shape')

		assert result.exit_code == 0
		assert result.output == case.output
	}
}
