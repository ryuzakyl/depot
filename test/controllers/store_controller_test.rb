require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response(:success)

    #NOTE: As always, data is loaded from fixtures

    # checking for new changes made into store controller and view
    assert_select('#columns #side a', minimum: 4)
    assert_select('#main .entry', 3)
    assert_select('h3', 'Programming Ruby 1.9')
    assert_select('.price', /\$[,\d]+\.\d\d/)
  end

  # ajax tests
  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.store .entry > img', 3
    assert_select '.entry input[type=submit]', 3
  end
end
