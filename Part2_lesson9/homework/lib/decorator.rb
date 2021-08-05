# frozen_string_literal: true

# Class Signature
class Signature
  def operation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Class approval from Engineer
class EngineerSignature < Signature
  def operation
    'EngineerSignature'
  end
end

# Class signing of documents
class Signing < Signature
  attr_accessor :component

  def initialize(component)
    @component = component
    super
  end

  def operation
    @component.operation
  end
end

# Class approval from Lead Engineer
class LeadEngineerSignature < Signing
  def operation
    "LeadEngineerSignature(#{@component.operation})"
  end
end

# Class approval from Superintendent
class SuperintendentSignature < Signing
  def operation
    "SuperintendentSignature(#{@component.operation})"
  end
end

def approval(component)
  "RESULT: #{component.operation}"
end
