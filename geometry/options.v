module geometry

pub enum GeometricShape {
	left_triangle
	right_triangle
	pyramid
	square
	diamond
}

pub struct ShapeOptions {
	size   int
	symbol byte = `*`
}

pub fn generate_shape(shape GeometricShape, options ShapeOptions) []string {
	return match shape {
		.left_triangle { generate_left_triangle(options) }
		.right_triangle { generate_right_triangle(options) }
		.pyramid { generate_pyramid(options) }
		.square { generate_square(options) }
		.diamond { generate_diamond(options) }
	}
}
