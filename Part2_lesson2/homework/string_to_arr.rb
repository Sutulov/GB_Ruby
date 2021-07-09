# frozen_string_literal: true

p 'Hello world!'.each_char.to_a
p 'Hello world!'.scan(/[A-Za-z, .;:!]+?/)
