def my_map
  yield
end

(1..5).my_map { |i| puts i }
