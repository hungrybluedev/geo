module geometry

pub fn generate_left_triangle(options ShapeOptions) []string {
	if !options.are_valid() {
		return []
	}

	mut lines := []string{cap: options.size}
	for i in 0 .. options.size {
		line_length := i + 1
		mut line := []rune{cap: line_length}
		for _ in 0 .. line_length {
			line << options.symbol
		}
		lines << line.string()
	}
	return lines
}

pub fn generate_right_triangle(options ShapeOptions) []string {
	if !options.are_valid() {
		return []
	}

	mut lines := []string{cap: options.size}
	for i in 0 .. options.size {
		line_length := i + 1
		mut line := []rune{cap: options.size}
		for _ in 0 .. (options.size - i - 1) {
			line << ` `
		}
		for _ in 0 .. line_length {
			line << options.symbol
		}
		lines << line.string()
	}
	return lines
}

pub fn generate_pyramid(options ShapeOptions) []string {
	if !options.are_valid() {
		return []
	}

	mut lines := []string{cap: options.size}
	for i in 0 .. options.size {
		line_length := 2 * i + 1
		mut line := []rune{cap: options.size}
		for _ in 0 .. (options.size - i - 1) {
			line << ` `
		}
		for _ in 0 .. line_length {
			line << options.symbol
		}
		lines << line.string()
	}
	return lines
}
