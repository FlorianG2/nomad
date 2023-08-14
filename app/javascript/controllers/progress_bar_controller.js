import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progress-bar"
export default class extends Controller {
  connect() {
    function progressBarScroll() {
      let winScroll = document.body.scrollTop || document.documentElement.scrollTop,
          height = document.documentElement.scrollHeight - document.documentElement.clientHeight,
          scrolled = (winScroll / height) * 100;
      document.getElementById("progressBar").style.left = scrolled + "%";
    }

    window.onscroll = function () {
      progressBarScroll();
    };
  }
}
