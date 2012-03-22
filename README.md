# Scidea (CardioVillage) Redirects

This gem adds two URL redirections to the CardioVillage instance of Scidea.

## Usage

1. Add `scidea-cv-redirects` to your Scidea Gemfile: 

    ```
    # Gemfile
    gem 'requirejs-rails'
    ```

## Development Environment and Testing

The gem is configured to use rspec tests. Because there are so many dependencies upon the Scidea core, rspec has been configured to launch an instance of the core application with the plugin's resources tied in. The features and specs of the plugin, however, are the only ones executed when you run rspec.

To set up your environment for testing, perform the following:

1. In your local Scidea core instance, add the following line to the Gemfile:

    ```
    # Gemfile
    gem 'scidea-cv-redirects', :path => 'LOCAL_PATH_TO_THIS_GEM'
    ```

2. Copy the contents of the Scidea core Gemfile *after* ``gemspec``, and paste it to the end of the Gemfile in the scidea-cv-redirects code. When you run rspec, it requires this Gemfile, thus you need all of the gems that Scidea core requires as well.

    ```
    source 'http://rubygems.org'

    gemspec

    gem 'scidea', :path => 'LOCAL_PATH_TO_SCIDEA-CORE'

    #from scidea core Gemfile:
    gem 'rails', '= 3.1.3'

    # db
    gem 'mysql2', '>= 0.3'

    # authentication and authorization
    gem 'devise', '< 2.0'
    gem 'cancan'
    
    ... and so on
    ```

From scidea-schools, you can run ``rspec``. Note that FactoryGirl factories from the Scidea core are included in the testing runtime and added to whatever you include in ``spec/factories``. The database configuration from the Scidea core will also be used. You must run all rake operations for that database in the context of the Scidea core folder. They will not work in the scidea-cv-redirects folder.

----

Copyright 2012 Scitent, Inc. See the file MIT-LICENSE for terms.
