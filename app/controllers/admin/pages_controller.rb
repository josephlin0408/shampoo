class Admin::PagesController < Admin::BaseController
	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			redirect_to admin_pages_path
		else
			render :new
		end
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		if @page.update(page_params)
			redirect_to admin_pages_path
		else
			render :edit
		end
	end

	private

	def page_params
		params.require(:page).permit(:content)
	end
end
