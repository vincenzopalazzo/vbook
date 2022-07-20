module conv

import markdown

pub struct MDConverter { }

pub fn (instance &MDConverter) parse_md(path string) markdown.MDDocument {
	return markdown.MDDocument{}
}