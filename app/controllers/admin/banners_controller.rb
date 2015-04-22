class Admin::BannersController < ApplicationController
	def index
		@banners = Banner.all
	end

	def new
		@banner = Banner.new
	end

	def create
		@banner = Banner.new(banner_params)
		if @banner.save
			redirect_to admin_banners_path
		else
			render :new
		end
	end

	private
	def banner_params
		params.require(:banner).permit(:name, :image)
	end
end
