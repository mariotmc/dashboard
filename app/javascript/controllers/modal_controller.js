import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["content"];

  close() {
    this.element.remove();
  }

  closeOnSubmit(e) {
    if (e.detail.success) this.close();
  }

  clickOutside(e) {
    if (!this.contentTarget.contains(e.target)) this.close();
  }
}
