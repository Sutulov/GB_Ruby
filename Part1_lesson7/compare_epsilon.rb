# frozen_string_literal: true

fst = 4 / 3.0 - 1
snd = 1 / 3.0

p fst == snd
p (fst - snd).abs < Float::EPSILON
p Float::EPSILON
