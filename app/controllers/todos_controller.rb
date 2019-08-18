class TodosController < ApplicationController
    def new
        @todo = Todo.new
      end
    def index 
    end
    def about
    end
    def create
     @todo= Todo.new(todo_params)
     if @todo.save
      flash[:notice]="Your todo item was saved"
      redirect_to todo_path(@todo) 
     
      else
      render :new 
    end
  end
  def show
    @todo =Todo.find(params[:id]) 
  end
    private
    def todo_params
      params.require(:todo).permit(:title, :description, :status , :group, :priority)
      end
end
