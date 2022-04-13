# FIXME: update with a V script
&:
	mkdir dist
	curl -sSL https://github.com/rust-lang/mdBook/releases/download/v0.4.17/mdbook-v0.4.17-x86_64-unknown-linux-gnu.tar.gz | tar -xz --directory=dist
	cp dist/mdbook vbook && cd vbook && ./mdbook build
	rm -rf dist