module Admin
  module Forms
    class ButtonLinkComponent < ApplicationComponent
      private attr_reader :title, :path, :form

      def initialize(title, path = nil, form: nil)
        @title = title
        @path = path
        @form = form
      end

      def call
        if form
          tag.button title, form:, type: "submit", class: classes
        else
          link_to title, path, class: classes
        end
      end

      private

      def classes
        "bg-white py-2 px-4 border border-gray-300 shadow-sm text-sm font-medium text-red-950 hover:bg-red-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500"
      end
    end
  end
end
