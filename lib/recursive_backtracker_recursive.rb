class RecursiveBacktrackerRecursive
    def self.on(grid, start_at: grid.random_cell)
      go(grid, start_at)
    end

    def self.go(grid, current)
      neighbors = current.neighbors.select { |n| n.links.empty? }

      unless neighbors.empty?
        neighbor = neighbors.sample
        current.link(neighbor)
        go(grid, neighbor)
        go(grid, current)
      end
    end

  # def self.on(grid, start_at: grid.random_cell)
  #   stack = []
  #   stack.push start_at

  #   while stack.any?
  #     current = stack.last
  #     neighbors = current.neighbors.select { |n| n.links.empty? }

  #     if neighbors.empty?
  #       stack.pop
  #     else
  #       neighbor = neighbors.sample
  #       current.link(neighbor)
  #       stack.push(neighbor)
  #     end
  #   end

  #   grid
  # end
end