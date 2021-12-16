module main

import geometry

fn main() {
	functions := [
		geometry.generate_triangle,
		geometry.generate_square,
	]
	for function in functions {
		lines := function(size: 5)
		println(lines.join_lines())

		println('\n\n')
	}
}
