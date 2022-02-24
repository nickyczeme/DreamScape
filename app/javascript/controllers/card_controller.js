import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
    this.element.classList.add("card-default")
    this.element.classList.remove("card-hover")
  }

  in() {
    // this.element.style.transition = "all 2s"
    this.element.classList.add("card-hover")
    // this.element.style.transition = "all 2s"
    this.element.classList.remove("card-default")
  }

  out() {
    // this.element.style.transition = "all 2s"
    this.element.classList.add("card-default")
    // this.element.style.transition = "all 2s"
    this.element.classList.remove("card-hover")
  }
}
