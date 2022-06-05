require_relative "../../src/build/scanner.rb"
require_relative "../../src/build/env.rb"
require_relative "../tests"

puts "\n== Running toolchain_test (integration 0)..."

assert Env.Hash(Scanner.GetTokens("int x = 1")[1]) == 120, "1.0" 
