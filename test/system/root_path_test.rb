require 'application_system_test_case'

class RootPathTest < ApplicationSystemTestCase

  test 'root path responds with Rails version at root path' do
    visit '/'

    assert has_content?('Hello World!')
  end
end
