# README

Simple Rails based application, which uses [https://github.com/maratgaliev/bottleneck](https://github.com/maratgaliev/bottleneck) as a requests rate limiter.

Two config files for application configuration:

**bottleneck.yml**

```ruby
limits:
  time_period_seconds: 3600
  max_requests_count: 100
```
**redis.yml**

```ruby
host: 'localhost'
port: 6379
```

Normal request:

![ok](https://api.monosnap.com/rpc/file/download?id=YnuL47aQQcXdLmaExu69ZI0UAXtwZb)


Limit reached:

![limit](https://api.monosnap.com/rpc/file/download?id=sCh512r57YnXtrNJg3oadGUNhcrFIn)