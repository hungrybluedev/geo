module geometry_tests

import geometry

/*
** Simple units tests for:
** * generate_square
** * generate_diamond
*/

// -----------------------------------------------------------------------------
// Square

// Test to generate a square of size 6 without custom symbol
fn test_generate_square_big_6() {
	opts := geometry.ShapeOptions{
		size: 6
	}
	shape := geometry.generate_square(opts)
	assert shape == ['******', '******', '******', '******', '******', '******']
}

// Test to generate a small square of size 2 without custom symbol
fn test_generate_square_small_2() {
	opts := geometry.ShapeOptions{
		size: 2
	}
	shape := geometry.generate_square(opts)
	assert shape == ['**', '**']
}

// Test to generate a small square of size 2 with a custom symbol
fn test_generate_square_small_2_custom() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `x`
	}
	shape := geometry.generate_square(opts)
	assert shape == ['xx', 'xx']
}

// Invalid square
fn test_generate_square_invalid() {
	opts := geometry.ShapeOptions{
		size: -1
	}
	shape := geometry.generate_square(opts)
	assert shape.len == 0
}

// -----------------------------------------------------------------------------
// Diamond

// Test to generate a diamond of size 5 without custom symbol
fn test_generate_diamond_big_7() {
	opts := geometry.ShapeOptions{
		size: 5
	}
	shape := geometry.generate_diamond(opts)
	assert shape == ['    *', '   ***', '  *****', ' *******', '*********', '*********', ' *******',
		'  *****', '   ***', '    *']
}

// Test to generate a small diamond of size 2 without custom symbol
fn test_generate_diamond_small_2() {
	opts := geometry.ShapeOptions{
		size: 2
	}
	shape := geometry.generate_diamond(opts)
	assert shape == [' *', '***', '***', ' *']
}

// Test to generate a small diamond of size 2 with a custom symbol
fn test_generate_diamond_small_2_custom() {
	opts := geometry.ShapeOptions{
		size: 2
		symbol: `x`
	}
	shape := geometry.generate_diamond(opts)
	assert shape == [' x', 'xxx', 'xxx', ' x']
}

// Invalid diamond
fn test_generate_diamond_invalid() {
	opts := geometry.ShapeOptions{
		size: -1
	}
	shape := geometry.generate_diamond(opts)
	assert shape.len == 0
}
