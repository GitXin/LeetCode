# @param {Integer} n
# @return {Integer}
RECORDS = {
  1 => 1,
  2 => 2
}
def climb_stairs(n)
  if RECORDS[n].nil?
    RECORDS[n] = climb_stairs(n - 1) + climb_stairs(n - 2)
  else
    RECORDS[n]
  end
end