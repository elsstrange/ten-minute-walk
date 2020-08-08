def ten_minute_walk?(walk)
  walk_length_ten?(walk) && end_where_began?(walk)
end

def walk_length_ten?(walk)
  walk.length == 10
end

def end_where_began?(walk)
  directions = direction_log(walk)
  north_equal_south?(directions) && east_equal_west?(directions)
end

def direction_log(walk)
  direction_log = {
    "n" => 0,
    "s" => 0,
    "e" => 0,
    "w" => 0,
  }
  walk.each do | direction |
    direction_log[direction] += 1
  end
  direction_log
end

def north_equal_south?(direction_log)
  direction_log["n"] == direction_log["s"]
end

def east_equal_west?(direction_log)
  direction_log["e"] == direction_log["w"]
end