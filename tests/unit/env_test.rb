require_relative "../../src/build/env.rb"
require_relative "../tests"

puts "\n== Running env_test (unit 2)..."

assert Env.Hash("x") != Env.Hash("X"), "1.0"
assert Env.Hash("x") != Env.Hash("xxx"), "1.1"
assert Env.Hash("asd") == Env.Hash("dsa"), "2.0"
assert Env.Hash("x") == 120, "3.0"
