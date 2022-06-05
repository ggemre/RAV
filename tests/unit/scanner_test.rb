require_relative "../../src/build/scanner"
require_relative "../tests" 

puts "\n== Running scanner_test (unit 0)..."

assert Scanner.NumOfLines("Hello") == 1, "1.0"
assert Scanner.NumOfLines("Hello, world") == 1, "1.1"
assert Scanner.NumOfLines("1\n2\n3") == 3, "1.2"

assert Scanner.GetTokens('"Hello, world"')[0] == '"Hello, world"', "2.0"
assert Scanner.GetTokens("\n1 == 1\n")[1] == "==", "2.1"
