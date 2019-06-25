class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :destroy]

    def new
      @article=Article.new
    end

    def index
        @articles=Article.all
    end

    def show
      
    end

    def create
        @article=Article.new
        @article.name=params[:article][:name]
        @article.description=params[:article][:description]
        if @article.save
            flash[:success]="Article is successfully created"
            redirect_to articles_url       
        else
            redirect_to :back
        end

    end

    def destroy
        @article.destroy
        redirect_to articles_url
    end


    

    private

    def article_params
        params.require(:article).permit(:name, :description)
    end

    def set_article
        @article=Article.find(params[:id].to_i)
    end

end
