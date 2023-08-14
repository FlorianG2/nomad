import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {
  static targets = ["container"]
  connect() {
  }

  scrollDown() {
    let container = document.querySelector('.main-container');
    let height = container.offsetHeight + 1
    console.log(height);
    window.scrollBy(0,height)
  };
}
