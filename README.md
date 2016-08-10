activerecord-redshift-adapter
==============================

Amazon Redshift adapter for ActiveRecord 5 (Rails 5).

This is based entirely on a fork of [aamine's ActiveRecord4 Redshift Adapter](https://github.com/aamine/activerecord4-redshift-adapter) with patches only to parts that caused us direct errors when trying to integrate with a Rails 5.0 project.

Usage
-------------------

Write following in Gemfile:
```
gem 'activerecord-redshift-adapter', git: "git://github.com/LoyaltyNZ/activerecord-redshift-adapter.git"

```

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

License
---------

MIT license (same as ActiveRecord)
