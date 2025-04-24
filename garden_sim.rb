def draw_garden(width, height)
  garden = Array.new(height) { Array.new(width) { rand < 0.2 ? '*' : ' ' } }
  garden.each { |row| puts row.join }
end

def grow_garden(cycles, width, height)
  cycles.times do |cycle|
    system("clear") || system("cls")
    puts "Cycle #{cycle + 1}"
    draw_garden(width, height)
    sleep(0.5)
  end
end

grow_garden(20, 30, 10)
