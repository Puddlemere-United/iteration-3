class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def require_user
		if session[:user_id]
			true
		else
			redirect_to new_user_path
		end
	end

	def index
	  @products = if params[:term]
	    Product.where('name LIKE ?', "%#{params[:term]}%")
	  else
	    Product.all
	  end
	end

	private

		def search_params
			params.require(:product).permit(:term)
		end

end
