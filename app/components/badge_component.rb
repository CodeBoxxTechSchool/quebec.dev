class BadgeComponent < ApplicationComponent
  private attr_reader :title, :color

  def initialize(title, color:)
    @title = title
    @color = color
  end

  def call
    tag.span title, class: class_names("inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-medium", color_classes)
  end

  def color_classes
    case color.to_sym
    when :red
      "bg-red-100 text-red-800"
    when :green
      "bg-green-100 text-green-800"
    when :gray
      "bg-gray-100 text-gray-800"
    when :purple
      "bg-purple-100 text-purple-800"
    when :sky
      "bg-sky-100 text-sky-600"
    when :black
      "bg-black text-white"
    else
      raise "Unknown color: #{color}"
    end
  end
end
