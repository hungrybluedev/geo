module geometry

pub fn generate_square(options ShapeOptions) []string {
	single_line := options.symbol.repeat(options.size)
	lines := []string{len: options.size, init: single_line}
	return lines
}
