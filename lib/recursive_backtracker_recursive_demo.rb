require_relative './recursive_backtracker_recursive'
require_relative './grid'

grid = Grid.new(20, 20)
RecursiveBacktrackerRecursive.on(grid)

filename = "recursive_backtracker_recursive.png"
grid.to_png.save(filename)
puts "saved to #{filename}"