# frozen_string_literal: true

module BaseStimulusController
  def controller_name(name)
    html_name = name.to_s.gsub('_', '-')

    # For example "chat-scroll"
    define_singleton_method(:name) do
      html_name
    end

    controller_target_name = "#{name}-target"

    # For example "chat-scroll-target"
    define_singleton_method(:target) do
      controller_target_name
    end
  end

  def targets(*args)
    args.each do |target|
      target_js_name = target.to_s.camelize(:lower)

      # For example:
      #   - method name: chat_container_target
      #   - method return: "chatContainer"
      define_singleton_method("#{target}_target") do
        target_js_name
      end
    end
  end
end
