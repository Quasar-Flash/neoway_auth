Neoway Auth's Library for Ruby
==============

[![Gem Version](https://badge.fury.io/rb/neoway_auth.svg)](https://badge.fury.io/rb/neoway_auth)
[![neoway_auth](https://github.com/Quasar-Flash/neoway_auth/actions/workflows/tests.yml/badge.svg)](https://github.com/Quasar-Flash/neoway_auth/actions/workflows/tests.yml)

Dev Requirements
-----------------

- Ruby: Any version
- Bundler

Global Installation
-----------------

```ruby
gem install neoway_auth
```

Installation for Rails
-----------------

```ruby
# Add to the Gemfile
gem "neoway_auth", "~> 0.1.0"
```

Setting the Neoway configs - Rails Project
-----------------

Create the config/initializers/neoway.rb file and define:

```ruby
# Set the env variables
Neoway.configure do |config|
    config.application_name   = "application_name"
    config.application_secret = "application_secret"
    config.base_url           = "https://api.example.com" # optional - default: https://api.neoway.com.br
end
```

Applying an authentication
-----------------

```ruby
require 'neoway_auth'

auth = Neoway::Auth::Authentication.new
auth.login
```

Result example:

```ruby
#<Neoway::Auth::Result:0x00005605054895a8
 @body=
  "{\"token\":\"xxxxxxxxxxxxxxxxxxxxx\"}\n",
 @headers=
  {"server"=>"nginx",
   "content-type"=>"application/json; charset=utf-8",
   "content-length"=>"225",
   "referrer-policy"=>"no-referrer",
   "strict-transport-security"=>"max-age=31536000; includeSubdomains; preload",
   "x-content-type-options"=>"nosniff",
   "x-frame-options"=>"SAMEORIGIN",
   "x-xss-protection"=>"1; mode=block",
   "content-security-policy"=>"default-src 'none'",
   "date"=>"Fri, 02 Jul 2021 02:36:06 GMT",
   "connection"=>"keep-alive"},
 @request=
  #<Flash::Integration::Request:0x0000560504f99430
   @body="{\"application\":\"xxx-app\",\"application_secret\":\"xxxxxx\"}",
   @headers={:"Content-Type"=>"application/json", :Accept=>"application/json"},
   @method=:post,
   @params={},
   @time=2021-07-02 02:36:06.458744646 UTC,
   @url="https://api.neoway.com.br/auth/token">,
 @status=200,
 @time=2021-07-02 02:36:06.689160825 UTC>
```

Problems?
-----------------

**Please do not directly email any committers with questions or problems.**
A community is best served when discussions are held in public.

Searching the [issues](https://github.com/Quasar-Flash/neoway_auth/issues)
for your problem is also a good idea.

Contributing
-----------------

- Check out the latest master to make sure the feature hasn't been implemented
or the bug hasn't been fixed yet;
- Check out the issue tracker to make sure someone already hasn't requested it
and/or contributed it;
- Fork the project;
- Start a feature/bugfix branch;
- Commit and push until you are happy with your contribution;
- Make sure to add tests for it. This is important so I don't break it in a
future version unintentionally.;
- Please try not to mess with the Rakefile, version, or history. If you want to
have your own version, or is otherwise necessary, that is fine, but please
isolate to its own commit so I can cherry-pick around it.

License
-----------------

Please see [LICENSE](https://github.com/Quasar-Flash/neoway_auth/blob/master/LICENSE.txt)
for licensing details.

Authors
-----------------

Danilo Carolino, [@danilogco](https://github.com/danilogco) / [@Quasar-Flash](https://github.com/Quasar-Flash)
