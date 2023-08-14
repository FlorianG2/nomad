import { Application } from "@hotwired/stimulus"
import ScrollTo from 'stimulus-scroll-to'

const application = Application.start()

// Configure Stimulus development experience
application.register('scroll-to', ScrollTo)

application.debug = false
window.Stimulus   = application

export { application }
