import { Application } from "@hotwired/stimulus"

const application = Application.start()

application.debug = false;
// eslint-disable-next-line @typescript-eslint/no-explicit-any
(window as any).Stimulus = application

export { application }
