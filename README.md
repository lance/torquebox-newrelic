# TorqueBox Test Applications for New Relic

This repository contains simple, bare-bones applications for TorqueBox
with the New Relic agent installed in each.

For Sinatra and Rails 2.3.x applications you'll need to have
`require "newrelic_rpm"` somewhere - prefereably towards the bottom
of your application initialization.

## Running the Applications

You can see these applications in action yourself if you like. You'll
just need a few things to get started. I run them in an RVM gemset
with version 2.0.0.cr1 of torquebox-server.

    $ rvm jruby-1.6.7@newrelictest --create
    ....
    $ gem install torquebox-server --version=2.0.0.cr1 --pre
    ....

Run `bundle install` for each application.  Then you can deploy them by
running `torquebox deploy [appname]` from the top level directory; run
the server with `torquebox run`. 

Be sure to change the license key value in config/newrelic.yml!


