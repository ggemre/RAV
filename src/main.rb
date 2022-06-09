require "./build/scanner"
require "./build/error"
require "./build/parser"
require "./build/vm"

# linker
rawCode = Scanner.ReadFile ARGV[0]
linkedCode = Scanner.Link rawCode

#Error.Test linkedCode

# parser
Scanner.NumOfLines(linkedCode).times do
	toks = Scanner.GetTokens linkedCode
	Parser.Evaluate toks
	Parser.ResetState
end

# puts Parser.Instructions

# run through virtual machine
Vm.Execute Parser.Instructions
