# frozen_string_literal: true

require_relative 'lib/state'

substance = State.new.melt

puts substance.status
puts substance.freezze
puts substance.freezze.status
puts new = substance.freezze.sublime
puts new.status
