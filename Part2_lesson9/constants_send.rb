# frozen_string_literal: true

CONST = 1
Object.send(:remove_const, :CONST)
CONST = 2
puts CONST
