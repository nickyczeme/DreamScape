import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
  }

  in() {
    this.element.classList.add("card-hover")
    this.element.classList.remove("card-default")
  }

  out() {
    this.element.classList.add("card-default")
    this.element.classList.remove("card-hover")
  }
}
