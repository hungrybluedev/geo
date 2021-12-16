module main

import geometry

fn main() {
	println(geometry.version)

	shapes := [
		geometry.GeometricShape.left_triangle,
		geometry.GeometricShape.right_triangle,
		geometry.GeometricShape.square,
		geometry.GeometricShape.diamond,
	]
	for shape in shapes {
		lines := geometry.generate_shape(shape, size: 5)
		println(lines.join_lines())

		println('\n\n')
	}
}
