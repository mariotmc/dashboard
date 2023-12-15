import { Controller } from "@hotwired/stimulus";
import Sortable from "sortablejs";
import { put } from "@rails/request.js";

export default class extends Controller {
  static values = { group: String };

  connect() {
    Sortable.create(this.element, {
      onEnd: this.onEnd.bind(this),
      group: this.groupValue,
      animation: 200,
    });
  }

  onEnd(event) {
    const url = event.item.dataset.sortableUrl;
    const originStageId = event.from.dataset.sortableStageId;
    const destinationStageId = event.to.dataset.sortableStageId;

    put(url, {
      body: JSON.stringify({
        row_order_position: event.newIndex,
        origin_stage_id: originStageId,
        destination_stage_id: destinationStageId,
      }),
      responseKind: "turbo-stream",
    });
  }
}
