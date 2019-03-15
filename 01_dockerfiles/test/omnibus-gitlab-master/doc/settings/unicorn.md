# Unicorn settings

If you need to adjust the Unicorn timeout or the number of workers you can use
the following settings in `/etc/gitlab/gitlab.rb`.
Run `sudo gitlab-ctl reconfigure` for the change to take effect.

```ruby
unicorn['worker_processes'] = 3
unicorn['worker_timeout'] = 60
```

> NOTE: Minimum required `worker_processes` is 2 in order for the web editor to work correctly, see [gitlab-ce#18771](https://gitlab.com/gitlab-org/gitlab-ce/issues/18771)