require "test_helper"

class Developers::MetaTest < ActiveSupport::TestCase
  test "displays role level when one is selected" do
    title = build_title(role_levels: [:junior])
    assert_equal title, "Hire junior developers in Quebec"

    title = build_title(role_levels: [:junior, :senior])
    assert_equal title, "Hire developers in Quebec"

    title = build_title(role_levels: [])
    assert_equal title, "Hire developers in Quebec"
  end

  test "displays 'freelance' when only both contract role types are selected" do
    title = build_title(role_types: [:part_time_contract, :full_time_contract])
    assert_equal title, "Hire freelance developers in Quebec"

    title = build_title(role_types: [:part_time_contract, :full_time_contract, :full_time_employment])
    assert_equal title, "Hire developers in Quebec"

    title = build_title(role_types: [:part_time_contract])
    assert_equal title, "Hire developers in Quebec"
  end

  test "displays country if one is selected" do
    title = build_title(countries: ["Canada"])
    assert_equal title, "Hire developers in Canada"

    title = build_title(countries: ["United States", "Canada"])
    assert_equal title, "Hire developers in Quebec"

    title = build_title(countries: [])
    assert_equal title, "Hire developers in Quebec"
  end

  test "role level comes before freelance (and country at the end)" do
    title = build_title(
      role_levels: [:senior],
      role_types: [:part_time_contract, :full_time_contract],
      countries: ["Canada"]
    )
    assert_equal title, "Hire senior freelance developers in Canada"
  end

  def build_title(query_options = {})
    query = DeveloperQuery.new(query_options)
    Developers::Meta.new(query:, count: 190).title
  end
end
