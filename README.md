# TBD

![build status](https://travis-ci.org/themoah/ruby-sinatra-example-app.svg?branch=master)

Basic sinatra app with minimal functionality. 
All routes in app.rb

(Requires Ruby. https://github.com/rbenv/rbenv )
Setting up local env: `gem install bundler && bundle install`
Start localy: `bundle exec ruby app.rb`
Run rspec (unit-test): `bundle exec rspec`

Build docker: `docker build -t devops-sample:local .`
Run from docker `docker run devops-sample:local`

Github - https://github.com/themoah/ruby-sinatra-example-app
Travis - https://travis-ci.org/themoah/ruby-sinatra-example-app 

Deployment via k8s:
if `kubectl` is configured:
`cd k8s`
`kubectl apply -f *.yaml`

if `chef-solo` is configured, copy content of `chef-solo` and run `sudo chef-solo -c %CONFIG% -j %PATH_TO_ROLE%`