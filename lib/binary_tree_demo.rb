require_relative './grid'
require_relative './binary_tree'

grid = Grid.new(28, 28)
BinaryTree.on(grid)

puts grid