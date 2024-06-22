# 引数を受け取る
ASCII_ART ?= nasa.txt

.PHONY: run
run:
	./convert $(ASCII_ART) | ./generate_quine program.rb | ruby

.PHONY: debug
debug:
	./convert $(ASCII_ART) 1 | ./generate_quine program.rb | ruby

.PHONY: quine
quine:
	./convert $(ASCII_ART) | ./generate_quine program.rb
