module geometry

pub enum GeometricShapeKind {
	left_triangle
	right_triangle
	pyramid
	square
	diamond
}

pub struct ShapeOptions {
	kind   GeometricShapeKind
	size   int
	symbol rune = `*`
}

pub fn (options ShapeOptions) are_valid() bool {
	return options.size > 0 && options.symbol != 0
}

pub const shape_map = {
	'left-triangle':  GeometricShapeKind.left_triangle
	'right-triangle': GeometricShapeKind.right_triangle
	'pyramid':        GeometricShapeKind.pyramid
	'square':         GeometricShapeKind.square
	'diamond':        GeometricShapeKind.diamond
}
pub const allowed_shapes = shape_map.keys()

pub fn generate_shape(options ShapeOptions) []string {
	return match options.kind {
		.left_triangle { generate_left_triangle(options) }
		.right_triangle { generate_right_triangle(options) }
		.pyramid { generate_pyramid(options) }
		.square { generate_square(options) }
		.diamond { generate_diamond(options) }
	}
}
