# frozen_string_literal: true

fst, *snd = ['Hello', 'world', '!']
p fst
p snd

*fst, snd = ['Hello', 'world', '!']
p fst
p snd
