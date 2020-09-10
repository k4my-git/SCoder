class Code < ApplicationRecord
	belongs_to :user

	enum language: {
		Bash: 0,
		C: 1,
		C＋＋: 2,
		C＃: 3,
		Clojure: 4,
		CoffeeScript: 5,
		CSS: 6,
		Dart: 7,
		Delphi: 8,
		Erlang: 9,
		Go: 10,
		Haskell: 11,
		HTML: 12,
		Java: 13,
		JavaScript: 14,
		JSON: 15,
		LaTeX: 16,
		Lisp: 17,
		Lua: 18,
		OCaml: 19,
		Pascal: 20,
		Perl: 21,
		PHP: 22,
		Protocolbuffers: 23,
		Python: 24,
		R: 25,
		Regex: 26,
		Ruby: 27,
		Rust: 28,
		Scala: 29,
		SQL: 30,
		VHDL: 31,
		VisualBasic: 32,
		XML: 33
	}

end
