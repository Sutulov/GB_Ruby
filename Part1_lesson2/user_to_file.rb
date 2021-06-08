class User
	def fio
		'Иванов Иван'
	end
	def profession
		'Программист'
	end
end

user1 = User.new
f = File.new("user.txt", "w")
f.write("Пользователь: #{user1.fio}\n")
f.write("Работает по профессии: #{user1.profession}")
f.close
