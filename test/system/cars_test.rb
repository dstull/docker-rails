require 'application_system_test_case'

class CarsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit cars_url

    assert_selector "h1", text: "Car"
  end

  test 'create new car' do
    visit cars_url

    click_on 'New Car'
    fill_in 'Color', with: 'blue'
    fill_in 'Make', with: 'acura'

    click_on 'Create Car'

    assert has_content?('Car was successfully created')
    assert has_content?('blue')
  end
end
