module Admin
  class LinkComponent < ApplicationComponent
    private attr_reader :title, :path

    def initialize(title, path)
      @title = title
      @path = path
    end

    def call
      link_to title, path, class: "rounded-md bg-white font-medium text-red-950 hover:text-red-950 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2"
    end
  end
end
