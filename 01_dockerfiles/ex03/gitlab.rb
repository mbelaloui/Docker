external_url "https://192.168.99.100"
#letsencrypt['enable'] = false
nginx['redirect_http_to_https'] = true
nginx['ssl_certificate'] = "/etc/gitlab/ssl/192.168.99.100.crt"
nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/192.168.99.100.key"
