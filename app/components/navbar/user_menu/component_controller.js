import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "link", "menu", "trigger" ]
  static values = { open: Boolean }

  connect() {
  }

  disconnect() {
    this.close
  }

  toggle() {
    if(this.openValue) return this.close()
    if(this.hasLinkTarget) return this.open()
  }

  open() {
    this.openValue = true
    this.triggerTarget.classList.add("open")

    if(this.hasMenuTarget) return this.show()

    this.linkTarget.click()
  }

  close() {
    this.openValue = false
    this.triggerTarget.classList.remove("open")

    this.menuTarget.classList.add("hidden")
  }

  show() {
    this.menuTarget.classList.remove("hidden")
  }
}