module geometry

import v.vmod

pub const version = get_version()

pub fn get_version() string {
	manifest := vmod.from_file('v.mod') or { panic(err) }
	return manifest.version
}
