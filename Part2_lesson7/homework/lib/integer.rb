# frozen_string_literal: true

# Class for add convertions to bytes
class Integer
  KILO = 1024
  MEGA = KILO * KILO
  GIGA = MEGA * KILO
  TERA = GIGA * KILO

  def kilobytes
    self * KILO
  end

  def megabytes
    self * MEGA
  end

  def gigabytes
    self * GIGA
  end

  def terabytes
    self * TERA
  end
end
