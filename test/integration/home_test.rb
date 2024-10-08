require "test_helper"

class HomeTest < ActionDispatch::IntegrationTest
  include MetaTagsHelper

  test "shows developer profiles actively looking" do
    developers(:prospect).update!(
      search_status: :open
    )

    get root_path

    assert_select "h3", text: developers(:one).hero
  end

  test "custom meta tags are rendered" do
    get root_path

    assert_title_contains I18n.t("home.show.title_og")
    assert_description_contains I18n.t("home.show.description_og")
  end
end
