activerecord-redshift-adapter
==============================

Amazon Redshift adapter for ActiveRecord 5 (Rails 5).

This is based entirely on a fork of [aamine's ActiveRecord4 Redshift Adapter](https://github.com/aamine/activerecord4-redshift-adapter) with patches only to parts that caused us direct errors when trying to integrate with a Rails 5.0 project.

## Usage


Write following in Gemfile:
```
gem 'activerecord-redshift-adapter', git: "git://github.com/LoyaltyNZ/activerecord-redshift-adapter.git"

```

#### To use Redshift as you primary database:

In database.yml
```
development:
  adapter: redshift
  host: your_cluster_name.hashhash.ap-northeast-1.redshift.amazonaws.com
  port: 5439
  database: dev
  username: your_user
  password: your_password
  encoding: utf8
  pool: 3
  timeout: 5000
```

#### To use Redshift as a secondary database for some models only:

Set all your Redshift database details in `config/initilizers/redshift.rb`:
```
Rails.application.secrets.redshift_config = {
  host: ENV['REDSHIFT_HOST'],
  port: ENV['REDSHIFT_PORT'],
  user: ENV['REDSHIFT_USER'],
  password: ENV['REDSHIFT_PASSWORD'],
  database: ENV['REDSHIFT_DATABASE'],
  adapter: 'redshift'
}
```

Create a base model for redshift models `app/models/redshift_base.rb`:
```
class RedshiftBase < ActiveRecord::Base
  establish_connection Rails.application.secrets.redshift_config
  self.abstract_class = true
end
```

Any models based on a Redshift table can then inherit from this class:
```
class ExampleTable::RedshiftEvent < RedshiftBase
  self.table_name = :example_table
end
```

License
---------

MIT license (same as ActiveRecord)
