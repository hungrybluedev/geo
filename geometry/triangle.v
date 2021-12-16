module geometry

pub fn generate_triangle(options ShapeOptions) []string {
	mut lines := []string{cap: options.size}
	for i in 0 .. options.size {
		line_length := i + 1
		mut line := []byte{cap: line_length}
		for _ in 0 .. line_length {
			line << options.symbol
		}
		lines << line.bytestr()
	}
	return lines
}
