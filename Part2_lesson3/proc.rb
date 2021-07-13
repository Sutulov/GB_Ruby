# frozen_string_literal: true

block = proc { |x| x.even? }
p [*1..10].select(&block)
