# frozen_string_literal: true

rails_load_path = File.read('./lib/rails_load_path.txt').each_line(chomp: true).to_a
ruby_load_path = File.read('./lib/ruby_load_path.txt').each_line(chomp: true).to_a

puts rails_load_path - ruby_load_path
