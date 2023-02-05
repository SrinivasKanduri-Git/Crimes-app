import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="crime-modal"
export default class extends Controller {
  connect() {
    console.log("Hello world!");
  }

  initialize(){
    this.element.setAttribute("data-action": "click->crime-modal#showModal")
  }
}
