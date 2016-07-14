# Rails Issue #25836
Executing `bundle exec rake test` in the checkout directory will always pass. Commenting out the line `@app_env_config = nil if Rails.env.test?` inside `config/application.rb` returns the application to stock Rails behavior, where `bundle exec rake test` will fail sporadically if the integration test is not the first to execute.
