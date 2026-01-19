class TodoListsController < ApplicationController
  before_action :authenticate_user! # Obriga estar logado
  before_action :set_todo_list, only: %i[ show edit update destroy ]

  # GET /todo_lists
  def index
    # Mostra apenas as listas do usuário atual
    @todo_lists = current_user.todo_lists
  end

  # GET /todo_lists/1
  def show
  end

  # GET /todo_lists/new
  def new
    @todo_list = current_user.todo_lists.build
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists
  def create
    # Cria a lista associada ao usuário atual automaticamente
    @todo_list = current_user.todo_lists.build(todo_list_params)

    if @todo_list.save
      redirect_to @todo_list, notice: "Lista criada com sucesso! 🚀"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todo_lists/1
  def update
    if @todo_list.update(todo_list_params)
      redirect_to @todo_list, notice: "Lista atualizada."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /todo_lists/1
  def destroy
    @todo_list.destroy
    redirect_to todo_lists_url, notice: "Lista apagada.", status: :see_other
  end

  private
    # Busca a lista DENTRO das listas do usuário (evita que acessem listas alheias pela URL)
    def set_todo_list
      @todo_list = current_user.todo_lists.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to todo_lists_path, alert: "Lista não encontrada ou acesso negado."
    end

    def todo_list_params
      params.require(:todo_list).permit(:title)
    end
end