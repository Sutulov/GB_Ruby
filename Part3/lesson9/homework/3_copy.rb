# frozen_string_literal: true

require 'fileutils'
first = './lesson1'
second = './new'
FileUtils.cp_r first, second
