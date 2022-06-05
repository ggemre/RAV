def assert exp, id
  if exp
    puts "Test #{id} -- \e[32mDONE\e[0m"
  else
    puts "Test #{id} -- \e[31mFAILED\e[0m"
  end
end
