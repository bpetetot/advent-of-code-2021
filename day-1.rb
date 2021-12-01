def part1()
  file = File.open("day-1-input.txt")
  file_data = file.readlines.map(&:chomp)
  prev_value = nil
  count = 0
  file_data.each do |n|
    count += 1 if (!prev_value.nil? && prev_value < n.to_i)
    prev_value = n.to_i
  end
  puts("Part 1: #{count}")
end

part1()

def part2()
  file = File.open("day-1-input.txt")
  file_data = file.readlines.map(&:chomp)

  prev_value = nil
  count = 0
  (0..file_data.length - 3).each do |n|
    cur_value = file_data[n].to_i + file_data[n+1].to_i + file_data[n+2].to_i
    count += 1 if (!prev_value.nil? && prev_value < cur_value)
    prev_value = cur_value
  end
  puts("Part 2: #{count}")
end

part2()