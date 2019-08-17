class PagesController < ApplicationController
	def about
		@heading = "Страничка про нас!"
		@info = "Тестовое приложение написанное на языке Ruby, фреймворк Ruby on rails."
	end
end
