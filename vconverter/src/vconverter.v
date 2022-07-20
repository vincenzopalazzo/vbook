module main

import conv

fn main() {
	converter := conv.MDConverter{}
	println('Hello World! ${converter.parse_md("")}')
}
