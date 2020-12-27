import { Controller } from "stimulus"
import Sortable from "sortablejs"


export default class extends Controller {
  static targets = [ "column" ]
  static values = { url: String }

  connect() {
    this.sortable = []

    this.columnTargets.forEach((column) => {
      const s = Sortable.create(column, {
        group: 'shared',
        animation: 150,
        onEnd: this.end.bind(this)
      })

      this.sortable.push(s)
    })
  }

  end(event) {
    const csrfToken = document.querySelector("[name='csrf-token']").content;
    const id = event.item.dataset.taskId
    const data = {
      position: event.newIndex + 1,
      column: parseInt(event.to.dataset.columnId, 10)
    }

    const fetchData = {
      method: "PATCH",
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-Type": "application/json"
      },
      body: JSON.stringify(data)
    }

    fetch(this.urlValue.replace(":id", id), fetchData)
      // .then(response => response.json())
      // .then(data => console.log(data))
  }
}