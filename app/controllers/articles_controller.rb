class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
        render json: @article
        # if @article.errors.any?
        #     render json: @article.errors.full_messages
        # else 
        #     render json: @article
        # end
    end
    def index
        @articles = Article.all
        render json: @articles
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
          flash[:notice]="Article is successfully created !"
          redirect_to @article 
        else
          render 'new'
        end
        render json: @articles
    end
    def edit
        @article = Article.find(params[:id])
        render json: @article
    end
    def update
        @article = Article.find(params[:id])
        @article.update(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice]="Article is successfully edited !"
            redirect_to @article 
        else
            render 'edit'
        end
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        # redirect_to articles_path
        render json: @article
    end
end