class Post < ActiveRecord::Base
	belongs_to :user

	def date
		full_date = self.created_at
		full_date.month.to_s + "." + full_date.day.to_s + "." + full_date.year.to_s
	end
end
