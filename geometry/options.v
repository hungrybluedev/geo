module geometry

pub enum GeometricShape {
	triangle
	square
}

pub struct ShapeOptions {
	size   int
	symbol byte = `*`
}
