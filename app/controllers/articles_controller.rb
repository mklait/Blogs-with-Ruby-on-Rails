class ArticlesController < ApplicationController

def new
end

def create

	@article = Article.new (article_params)

	@article.save
	redirect_to articles_path
	end 

def show
	@article = Article.find(params[:id])
end 

def index
	@articles = Article.all
end


private
def article_params
	params.require(:article).permit(:title, :text) # put this into its own method so it can be resused by multiple ations in a controller
end

end
#put it as a private method so that it cannot be called outside its intended contexr. 
