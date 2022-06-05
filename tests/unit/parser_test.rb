require_relative "../tests"

puts "\n== Running parser_test (unit 1)..."

def instructions inst
  i = 0
  j = 0
  lngth = inst.length

  while i < lngth
    if inst[i] =~ /\.strt\d+/
      j = i
      scopeLevel = inst[i].scan(/\d+/).to_s[2]
      while j < lngth
        if inst[j] == ".end" + scopeLevel && inst[j - 1] !~ /JMP \.strt\d+/
          inst.insert(j, "JMP .strt" + scopeLevel)
          lngth += 1
          i += 1
          j += 1
          break
        end
        j += 1
      end
    end
    i += 1
  end

  inst.push "HLT"

  return inst
end

assert instructions(["nop", "1"])[-1] == "HLT", "1.0"
assert !instructions(["mov %r1 16", "mov %r2 8", "add %r1 %r2"]).include?(".strt1"), "2.0"
assert instructions(["nop", "nop", ".strt1", "nop", "nop", ".end1"]).include?("JMP .strt1"), "2.1"
assert instructions(["nop", ".strt1", ".strt2", "nop", ".end2", ".end1"]).include?("JMP .strt1"), "2.2"
