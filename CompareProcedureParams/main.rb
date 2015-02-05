def print_arr (arr)
    arr.each do |elem|
        puts elem
    end
end

log_params = []
File.open("log_params.txt", "r").each_line do |line|
  data = line.split(':')
  log_params << data[0].strip
end

current_params = []
File.open("current_params.txt", "r").each_line do |line|
  data = line.split(' IN ')
  current_params << data[0].strip
end

log_params.sort!
current_params.sort!

#puts 'log_params'
#print_arr(log_params)
#puts 'current_params'
#print_arr(current_params)

rest_log_params = []
log_params.each do |lelem|
    rest_log_params << lelem if current_params.delete(lelem).nil?
end

puts 'rest log_params'
print_arr rest_log_params
puts 'rest current_params'
print_arr current_params