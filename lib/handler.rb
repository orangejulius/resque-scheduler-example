class Handler
	@queue = 'test'

	def self.perform(id)
    t = TestClass.find(id)
		puts "Created at " + t.created_at.to_s + " executed at " + Time.now.to_s
	end
end
