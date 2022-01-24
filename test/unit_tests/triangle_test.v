module geometry_tests

import geometry

// -----------------------------------------------------------------------------
// Left triangle
// -----------------------------------------------------------------------------

// Test to generate a left triangle of size 6 without custom symbol
fn test_generate_left_triangle_big_6() {
	opts := geometry.ShapeOptions{
		size: 6
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape == ['*', '**', '***', '****', '*****', '******']
}

// Test to generate a left triangle of size 2 without custom symbol
fn test_generate_left_triangle_small_2() {
	opts := geometry.ShapeOptions{
		size: 2
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape == ['*', '**']
}

// Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_left_triangle_small_2_custom() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `x`
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape == ['x', 'xx']
}

// Invalid left triangle
fn test_generate_left_triangle_invalid() {
	opts := geometry.ShapeOptions{
		size: -1
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape.len == 0
}

fn test_generate_left_triangle_unicode_1() {
	opts := geometry.ShapeOptions{
		size: 3
		symbol: `🔼`
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape == ['🔼', '🔼🔼', '🔼🔼🔼']
}

fn test_generate_left_triangle_unicode_2() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `ॐ`
	}
	shape := geometry.generate_left_triangle(opts)
	assert shape == ['ॐ', 'ॐॐ']
}

// -----------------------------------------------------------------------------
// Right triangle
// -----------------------------------------------------------------------------

// Test to generate a left triangle of size 6 without custom symbol
fn test_generate_right_triangle_big_6() {
	opts := geometry.ShapeOptions{
		size: 6
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape == ['     *', '    **', '   ***', '  ****', ' *****', '******']
}

// Test to generate a left triangle of size 2 without custom symbol
fn test_generate_right_triangle_small_2() {
	opts := geometry.ShapeOptions{
		size: 2
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape == [' *', '**']
}

// Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_right_triangle_small_2_custom() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `x`
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape == [' x', 'xx']
}

// Invalid right triangle
fn test_generate_right_triangle_invalid() {
	opts := geometry.ShapeOptions{
		size: -1
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape.len == 0
}

fn test_generate_right_triangle_unicode_1() {
	opts := geometry.ShapeOptions{
		size: 3
		symbol: `🔼`
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape == ['  🔼', ' 🔼🔼', '🔼🔼🔼']
}

fn test_generate_right_triangle_unicode_2() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `🀃`
	}
	shape := geometry.generate_right_triangle(opts)
	assert shape == [' 🀃', '🀃🀃']
}

// -----------------------------------------------------------------------------
// Pyramid
// -----------------------------------------------------------------------------

// Test to generate a left triangle of size 6 without custom symbol
fn test_generate_pyramid_big_6() {
	opts := geometry.ShapeOptions{
		size: 6
	}
	shape := geometry.generate_pyramid(opts)
	assert shape == ['     *', '    ***', '   *****', '  *******', ' *********', '***********']
}

// Test to generate a left triangle of size 2 without custom symbol
fn test_generate_pyramid_small_2() {
	opts := geometry.ShapeOptions{
		size: 2
	}
	shape := geometry.generate_pyramid(opts)
	assert shape == [' *', '***']
}

// Test to generate a left triangle of size 2 with a custom symbol
fn test_generate_pyramid_small_2_custom() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `x`
	}
	shape := geometry.generate_pyramid(opts)
	assert shape == [' x', 'xxx']
}

// Invalid pyramid
fn test_generate_pyramid_invalid() {
	opts := geometry.ShapeOptions{
		size: -1
		symbol: `x`
	}
	shape := geometry.generate_pyramid(opts)
	assert shape.len == 0
}

fn test_generate_pyramid_unicode_1() {
	opts := geometry.ShapeOptions{
		size: 3
		symbol: `🔼`
	}
	shape := geometry.generate_pyramid(opts)
	assert shape == ['  🔼', ' 🔼🔼🔼', '🔼🔼🔼🔼🔼']
}

fn test_generate_pyramid_unicode_2() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `🀃`
	}
	shape := geometry.generate_pyramid(opts)
	assert shape == [' 🀃', '🀃🀃🀃']
}
