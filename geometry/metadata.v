module geometry

import v.vmod

const manifest = vmod.from_file('v.mod') or { panic(err) }

pub const version = manifest.version
pub const name = manifest.name
pub const description = manifest.description
