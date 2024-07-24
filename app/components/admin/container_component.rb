module Admin
  class ContainerComponent < ApplicationComponent
    def call
      tag.div content, class: "container overflow-hidden max-w-5xl pt-24 pb-0 mx-auto flex flex-col justify-center sm:px-6 lg:px-8"
    end
  end
end
