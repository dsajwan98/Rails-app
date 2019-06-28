class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :destroy, :edit, :update]

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
        @article.user_id=session[:user_id]
        @article.name=params[:article][:name]
        @article.description=params[:article][:description]
        if @article.save
            flash[:success]="Article is successfully created"
            redirect_to articles_url       
        else
            redirect_to new_user_path
        end

    end

    def destroy
        if @article.destroy
            flash[:success]="Article is successfully deleted"
            redirect_to articles_url
        end
    end

    def edit
        
    end

    def update
        
        if @article.update(article_params)
            flash[:success]="Article is successfully updated"
            redirect_to articles_url       
        else
            redirect_to :back
        end
    end


    

    private

    def article_params
        params.require(:article).permit(:name, :description)
    end

    def set_article
        @article=Article.find(params[:id].to_i)
    end

end
