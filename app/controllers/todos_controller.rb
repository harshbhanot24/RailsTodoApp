class TodosController < ApplicationController
    def new
        @todo = Todo.new
      end
    def index 
      @todos= Todo.all
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
  def edit
    @todo =Todo.find(params[:id]) 
  end
  def update
    @todo= Todo.find(params[:id]) 
    if @todo.update(todo_params)
     flash[:notice]="Your todo item was updated successfully"
     redirect_to todo_path(@todo) 
    
     else
     render :edit
   end
  end
    private
    def todo_params
      params.require(:todo).permit(:title, :description, :status , :group, :priority)
      end
end
