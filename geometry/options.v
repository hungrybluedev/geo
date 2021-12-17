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
	symbol rune = `*`
}

pub fn (options ShapeOptions) are_valid() bool {
	return options.size > 0 && options.symbol != 0
}

pub const (
	shape_map = {
		'left-triangle':  GeometricShape.left_triangle
		'right-triangle': GeometricShape.right_triangle
		'pyramid':        GeometricShape.pyramid
		'square':         GeometricShape.square
		'diamond':        GeometricShape.diamond
	}
	allowed_shapes = shape_map.keys()
)

pub fn generate_shape(shape GeometricShape, options ShapeOptions) []string {
	return match shape {
		.left_triangle { generate_left_triangle(options) }
		.right_triangle { generate_right_triangle(options) }
		.pyramid { generate_pyramid(options) }
		.square { generate_square(options) }
		.diamond { generate_diamond(options) }
	}
}
