# README

## Setup

```sh
$ SHARD=one bin/rails db:setup
$ SHARD=one bin/rails db:seed
$ SHARD=two bin/rails db:setup
$ SHARD=two bin/rails db:seed
$ bin/rails console
```

```rb
>> Connections.instance.with_connection(:one) { Bucket.all.to_a }
>> Connections.instance.with_connection(:two) { Bucket.all.to_a }
```
