class Task < ApplicationRecord
  belongs_to :todo_list

  default_scope { order(position: :asc) }
  
  # Método manual para reordenar sem gems externas
  def insert_at(new_position)
    # Lógica simples de reordenação de lista
    tasks = todo_list.tasks.where.not(id: id).to_a
    tasks.insert(new_position - 1, self)
    
    # Atualiza todos
    tasks.each_with_index do |task, index|
      task.update_column(:position, index + 1)
    end
  end
end
