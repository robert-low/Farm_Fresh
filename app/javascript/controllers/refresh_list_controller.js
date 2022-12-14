import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  update() {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
      })
  }

  // update() {
  //   const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
  //   fetch(url, { headers: { 'Accept': 'text/plain' } })
  //     .then(response => response.text())
  //     .then((data) => {
  //       this.listTarget.outerHTML = data;
  //     })
  // }

}
