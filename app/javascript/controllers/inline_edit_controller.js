import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["element", "form"];

  edit() {
    this.elementTarget.classList.add("hidden");
    this.formTarget.classList.remove("hidden");
  }

  cancel() {
    this.elementTarget.classList.remove("hidden");
    this.formTarget.classList.add("hidden");
  }
}
