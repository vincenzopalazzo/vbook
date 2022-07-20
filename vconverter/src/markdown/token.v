module markdown

/// Token is the class of tokens to support the base syntax of the markdon
/// https://daringfireball.net/projects/markdown/syntaxhttps://www.markdownguide.org/basic-syntax/
pub enum TokenKind {
	// dash symbol (-) used in the header definition and in
	// in the list definition.
	dash
	// eq symbol (=) used in the header definition.
	eq
	// hash symbol (#) used in the header definition.
	//
	// N.B: also in the markdown world it is possible close the header definition
	// by appending the hash at the end
	hash
	/// quote symbol (>) is used in blockquote definiontion.
	quote
	/// space symbol is used each time is encounter a new line.
	space
	/// star symbol is used in the list definiton
	star
	/// plus symbol is used in the list definition.
	plus
	/// minus symbol is used in the list defintion.
	minus
	/// dot_num symbol (e.g: 1.) is used in the list definition
	dot_num
}

// TODO: restart from CODE BLOCKS in the sytax def
pub struct Token {
pub:
	kind TokenKind
	val string
}