require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

# Class change state of matter
class Matter

  state_machine :status, initial: :solid do
    event :melt do
      transition :solid => :liquid
    end

    event :freezze do
      transition :liquid => :solid
    end

    event :boil do
      transition :liquid => :gas
    end

    event :condense do
      transition :gas => :liquid
    end

    event :sublime do
      transition :solid => :gas
    end

    event :deposit do
      transition :gas => :solid
    end
  end
end
