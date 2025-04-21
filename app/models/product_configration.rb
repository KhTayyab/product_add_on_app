class ProductConfigration < ApplicationRecord

	def options_value
		option_array = []
		if self.option_count.to_i == 1
			option_array << self.option1
		elsif self.option_count.to_i == 2
			option_array << self.option1
			option_array << self.option2
		elsif self.option_count.to_i == 3
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
		elsif self.option_count.to_i == 4
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
		elsif self.option_count.to_i == 5
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
		elsif self.option_count.to_i == 6
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
			option_array << self.option6
		elsif self.option_count.to_i == 7
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
			option_array << self.option6
			option_array << self.option7
		elsif self.option_count.to_i == 8
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
			option_array << self.option6
			option_array << self.option7
			option_array << self.option8
		elsif self.option_count.to_i == 9
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
			option_array << self.option6
			option_array << self.option7
			option_array << self.option8
			option_array << self.option9
		elsif self.option_count.to_i == 10
			option_array << self.option1
			option_array << self.option2
			option_array << self.option3
			option_array << self.option4
			option_array << self.option5
			option_array << self.option6
			option_array << self.option7
			option_array << self.option8
			option_array << self.option9
			option_array << self.option10
		end
		return option_array
	end

end
