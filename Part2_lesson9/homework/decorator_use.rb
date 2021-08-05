# frozen_string_literal: true

require_relative 'lib/decorator'

simple = EngineerSignature.new
puts approval(simple)

lead_engineer = LeadEngineerSignature.new(simple)
superintendent = SuperintendentSignature.new(lead_engineer)
puts approval(superintendent)
