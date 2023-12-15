import { Controller } from "@hotwired/stimulus";
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

export default class extends Controller {
  connect() {
    Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
    });
  }

  onEnd(event) {
    const url = event.item.dataset.sortableUrl;

    put(url, { body: JSON.stringify({ row_order_position: event.newIndex }) });
  }
}
