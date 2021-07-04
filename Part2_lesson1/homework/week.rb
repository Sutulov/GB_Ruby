today = Time.now
med = 7 - (today.strftime "%u").to_i
puts Array.new(7).map! { |day| med += 1; day = (today - (7 - med) * 86400).strftime "%d.%m.%Y"}
