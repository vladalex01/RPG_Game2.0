require_relative 'Item'

class Boots < Item
	
	def initialize(att=0, defe=0, val=0, nume="Boots")  
		super(att, defe, val, nume)
	end
	
	def show(i=0)
		super(i)
	end
end
