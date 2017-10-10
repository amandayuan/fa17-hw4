class PagesController < ApplicationController
    def home
        @cats = Cat.all
        @todos = Todo.all
        @users = User.all
    end

    def index
        @todo = Todo.new
    end

    def create
		    todo = Todo.new(tasks: params[:todo][:tasks], finished: true)
		    todo.save!

		    redirect_to root_path
    end

end
