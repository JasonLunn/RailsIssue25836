require 'test_helper'

class BoomControllerIntegrationTest < ActionDispatch::IntegrationTest
  def setup
    super
    @consider_requests_local = Rails.configuration.consider_all_requests_local
    Rails.configuration.consider_all_requests_local = false
    @show_exceptions = Rails.configuration.action_dispatch.show_exceptions
    Rails.configuration.action_dispatch.show_exceptions = true
  end

  def teardown
    super
    Rails.configuration.consider_all_requests_local = @consider_requests_local
    Rails.configuration.action_dispatch.show_exceptions = @show_exceptions
  end

  test 'should have a nice day when you boom' do
    get '/boom/boom'
    assert_response :success
    assert_equal 'Have a nice day', response.body
  end
end
