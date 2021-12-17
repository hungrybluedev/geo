module geometry

pub fn generate_square(options ShapeOptions) []string {
	// Check if the size is invalid
	if options.size <= 0 {
		return []
	}

	single_line := options.symbol.repeat(options.size)
	lines := []string{len: options.size, init: single_line}
	return lines
}

pub fn generate_diamond(options ShapeOptions) []string {
	mut lines := []string{cap: options.size * 2 - 1}

	// top half
	for i in 0 .. options.size {
		mut current_line := []byte{cap: options.size + i + 1}
		for _ in 0 .. (options.size - i - 1) {
			current_line << ` `
		}
		for _ in 0 .. (2 * i + 1) {
			current_line << options.symbol
		}
		lines << current_line.bytestr()
	}

	// bottom half
	for i := options.size - 1; i >= 0; i-- {
		lines << lines[i]
	}
	return lines
}
