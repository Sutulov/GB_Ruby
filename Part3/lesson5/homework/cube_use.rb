# frozen_string_literal: true

require_relative 'lib/cube'

cube = Cube.new([[0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0]])
p cube.cube
cube2 = Cube.new([[1, 1, 1], [1, 1, 2], [1, 2, 1], [2, 1, 1]])
p cube2.cube
cube3 = Cube.new([[0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0]])
p cube3.cube
cube4 = Cube.new([[0, 0, 0], [0, 0, 3], [0, 3, 0], [3, 0, 0]])
p cube4.cube
cube5 = Cube.new([[1, 1, 1], [1, 1, 2], [1, 2, 1], [2, 1, 1]])
p cube5.cube
