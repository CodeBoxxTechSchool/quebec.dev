module Admin
  class ContainerComponent < ApplicationComponent
    def call
      tag.div content, class: "container overflow-hidden pt-24 pb-0 mx-auto flex flex-col justify-center"
    end
  end
end
