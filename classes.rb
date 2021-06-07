class User
	def login
		'user1'
	end
	def password
		'12345'
	end
end

new_user = User.new
p 'login - ' + new_user.login
p 'password - ' + new_user.password

class Computer
	def motherboard
		'Asus'
	end
	def processor
		'Intel'
	end
end

my_com = Computer.new
p 'Материнская плата: ' + my_com.motherboard
p 'Процессор: ' + my_com.processor

class Network
	def quantity_host
		'5'
	end
end

my_net = Network.new
p 'Количество хостов в сети: ' + my_net.quantity_host

class Host
	def ip
		'192.168.0.5'
	end
end

server1 = Host.new
p 'IP-адрес: ' + server1.ip
