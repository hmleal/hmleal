help:
	@echo 'Makefile                                                           '
	@echo '-------------------------------------------------------------------'
	@echo '                                                                   '
	@echo '  server                Serve files from memory to development mode'
	@echo '  publish               Build all files to public folder           '
	@echo '  sass                  Watch sass files                           '

server:
	# @hugo server -wDs . -d dev
	@hugo server -D

build:
	@rm -rf public/*
	@sass themes/hmleal-theme/static/css/app.scss:themes/hmleal-theme/static/css/app.css --style compressed
	@hugo -s .
	@rm public/css/app.scss public/css/_Syntax.scss

sass:
	@sass --watch themes/hmleal-theme/static/css/app.scss:themes/hmleal-theme/static/css/app.css --style compressed
