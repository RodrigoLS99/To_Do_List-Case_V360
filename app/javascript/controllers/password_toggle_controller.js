import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "eyeOpen", "eyeClosed"]

  connect() {
    // Garante estado inicial
    this.updateIcon()
  }

  toggle(e) {
    e.preventDefault()
    
    // Troca entre 'password' e 'text'
    if (this.inputTarget.type === "password") {
      this.inputTarget.type = "text"
    } else {
      this.inputTarget.type = "password"
    }
    
    this.updateIcon()
  }

  updateIcon() {
    if (this.inputTarget.type === "password") {
      this.eyeOpenTarget.classList.remove("hidden")
      this.eyeClosedTarget.classList.add("hidden")
    } else {
      this.eyeOpenTarget.classList.add("hidden")
      this.eyeClosedTarget.classList.remove("hidden")
    }
  }
}