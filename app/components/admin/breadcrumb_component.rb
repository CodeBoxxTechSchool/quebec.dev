module Admin
  class BreadcrumbComponent < ApplicationComponent
    private attr_reader :title, :path

    def initialize(title, path)
      @title = title
      @path = path
    end

    def call
      tag.div class: "flex justify-center mt-2" do
        link_to title, path, class: "text-sm font-medium text-red-950 hover:text-red-950"
      end
    end
  end
end
