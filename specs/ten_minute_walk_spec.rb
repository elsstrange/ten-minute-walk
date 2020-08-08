# As a walker
# So I can fill my waiting time exactly
# I want to know that a walk will take exactly ten minutes

tests_for "confirms that a walk will take 10 mins" do
  it "approves a walk that is 10 mins" do
    # set-up
    walk = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']

    # execute
    result = ten_minute_walk?(walk)
    expected = true

    # verify
    check_result(expected, result)
  end

  it "rejects a walk that is less than 10 mins" do
    # set-up
    walk = ['w', 's']

    # execute
    result = ten_minute_walk?(walk)
    expected = false

    # verify
    check_result(expected, result)
  end

  it "rejects a walk that is more than 10 mins" do
    # set-up
    walk = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w','n','s']

    # execute
    result = ten_minute_walk?(walk)
    expected = false

    # verify
    check_result(expected, result)
  end
end

tests_for "confirms that a walk will end where it started" do
  it "approves a walk that ends where it started" do
    # set-up
    walk = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']

    # execute
    result = ten_minute_walk?(walk)
    expected = true

    # verify
    check_result(expected, result)
  end

  it "rejects a walk that does not end where it started" do
    # set-up
    walk = ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']

    # execute
    result = ten_minute_walk?(walk)
    expected = false

    # verify
    check_result(expected, result)
  end

  it "rejects another walk that does not end where it started" do
    # set-up
    walk = ['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']

    # execute
    result = ten_minute_walk?(walk)
    expected = false

    # verify
    check_result(expected, result)
  end

end