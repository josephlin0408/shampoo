class Admin::PagesController < Admin::BaseController
	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_paramsge)
		if @page.save
			redirect_to admin_pages_path
		else
			render :new
		end
	end

	private

	def page_params
		params.require(:page).permit(:content)
	end
end
