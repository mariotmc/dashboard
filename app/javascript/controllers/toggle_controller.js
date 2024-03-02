import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["target", "openIcon", "closeIcon"];

  toggle() {
    this.targetTarget.classList.toggle("hidden");

    if (this.hasOpenIconTarget && this.hasCloseIconTarget) {
      this.openIconTarget.classList.toggle("hidden");
      this.closeIconTarget.classList.toggle("hidden");
    }
  }
}
