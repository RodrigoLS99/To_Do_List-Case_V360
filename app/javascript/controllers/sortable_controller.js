import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

// Connects to data-controller="sortable"
export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      handle: ".cursor-move", // Só arrasta se clicar no ícone de "mãozinha"
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    let id = event.item.dataset.id
    let data = new FormData()
    
    data.append("id", id)
    data.append("new_position", event.newIndex + 1)

    // Envia a nova posição para o Rails via AJAX
    fetch(this.element.dataset.url, {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
      },
      body: data
    })
  }
}