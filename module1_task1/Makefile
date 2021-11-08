build:
	hugo -D

clean:
	rm -rf dist/

post:
	hugo new posts/$(POST_NAME).md
	sed -i.bak 's/^title: .*/title: "'"$(POST_TITLE)"'"/' content/posts/$(POST_NAME).md
	rm content/posts/$(POST_NAME).md.bak
