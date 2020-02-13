class PostsController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def show
		require 'htmltoword'
		# params[:id] - параметр по умолчанию
		logger.debug "Params in show: #{params}"
		@post = Post.find(params[:id])
		pdf_html = ActionController::Base.new.render_to_string(
				template: 'posts/show',
				layout: false,
				locals: {
						:@post => @post
				})
		file = Htmltoword::Document.create pdf_html, 'word'
		send_data(file, type:'application/doc', filename: 'word.docx')
	end

	def edit
		# params[:id] - параметр по умолчанию
		logger.debug "Params in edit: #{params}"
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		# Сохраняет данные в бд
		if(@post.update(post_params))
			# Перенаправление на страничку -> Вызовет метод show
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])

		@post.destroy

		redirect_to posts_path
	end

	def create 
		# render plain: params[:post].inspect

		# Переменная обращения к модели
		@post = Post.new(post_params)
		
		# Сохраняет данные в бд
		if(@post.save)
			# Перенаправление на страничку -> Вызовет метод show
			redirect_to @post
		else
			render 'new'
		end
		
	end

	# Метод разрешения полей 
	private def post_params
		#logger.debug "Params in show: #{params.require(:post)}"
		params.require(:post).permit(:title, :body)
		# params - хэш с параметрами
		# require – метод, который получает значение хэша по 
		# ключу, где ключом в данном случае является наш 
		# ресурс, указанный в форме. Если такого ключа нет, 
		# то Rails выбросит ошибку.
	end
end
