import { application } from "@controllers/application"
import { Controller } from "@hotwired/stimulus"
import type { StreamElement, TurboBeforeStreamRenderEvent } from "@hotwired/turbo"

class ChatScrollController extends Controller<HTMLDivElement> {
  static targets = ["chatContainer"]

  declare readonly chatContainerTarget: HTMLDivElement
  declare shouldScroll: boolean

  connect() {
    this.shouldScroll = true

    this.element.addEventListener("turbo:frame-render", () => {
      if (this.shouldScroll) {
        this.scrollToBottom()
      }
    })

    document.addEventListener(
      "turbo:before-stream-render",
      this.boundStreamHandler,
    )
  }

  disconnect() {
    document.removeEventListener(
      "turbo:before-stream-render",
      this.boundStreamHandler,
    )
  }

  private streamRenderHandler(event: TurboBeforeStreamRenderEvent) {
    const stream = event.target as StreamElement
    if (stream.action !== "append") return

    const targetId = `#${stream.target}`
    const messagesContainer = this.chatContainerTarget.querySelector(targetId)
    if (!messagesContainer) return

    const wasAtBottom = this.isAtTheBottom()

    const originalRender = event.detail.render

    event.detail.render = async(currentFrame) => {
      originalRender(currentFrame)

      if (wasAtBottom) {
        this.scrollToBottom()
      }
    }
  }
  private boundStreamHandler = this.streamRenderHandler.bind(this)

  private scrollToBottom() {
    const scrollHeight = this.chatContainerTarget.scrollHeight
    this.chatContainerTarget.scrollTop = scrollHeight
  }

  private isAtTheBottom() {
    const { scrollHeight, scrollTop, clientHeight } = this.chatContainerTarget
    return scrollHeight - scrollTop - clientHeight === 0
  }
}

application.register("chat-scroll", ChatScrollController)
