set :application, "dylangriff.in"
set :repository,  "git@github.com:griffindy/dylangriff.in"

set :deploy_to, '/var/www/dylangriff.in/html'
set :user, 'ubuntu'
ssh_options[:keys] = File.join(ENV['HOME'], '.ssh', 'aws', 'test.pem')
ssh_options[:forward_agent] = true
set :deploy_via, :copy

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "50.16.236.155"                          # Your HTTP server, Apache/etc
role :app, "50.16.236.155"                          # This may be the same as your `Web` server
role :db,  "50.16.236.155", :primary => true # This is where Rails migrations will run
