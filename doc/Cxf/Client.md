# class Cxf::Client [](#class-Cxf::Client) [](#top)
 ## Attributes
 ### api_key[R] [](#attribute-i-api_key)
 ### base_url[R] [](#attribute-i-base_url)
 ### contact_token_id[RW] [](#attribute-i-contact_token_id)
 ### host[R] [](#attribute-i-host)
 ### mode[R] [](#attribute-i-mode)
 ### refresh_token[RW] [](#attribute-i-refresh_token)
 ### refresh_token_expires_at[RW] [](#attribute-i-refresh_token_expires_at)
 ### scope[R] [](#attribute-i-scope)
 ### session_token[RW] [](#attribute-i-session_token)
 ### session_token_expires_at[RW] [](#attribute-i-session_token_expires_at)
 ## Public Class Methods
 ### new( host, api_key, scope = nil, session_token = nil, refresh_token = nil, contact_token_id = nil, visit_id = nil, debug = false, timeouts = {} ) [](#method-c-new)
 ## Public Instance Methods
 ### contact_get(url, headers = nil, compatibility_options) [](#method-i-contact_get)
 Start contact context

 ### contact_post(url, data, compatibility_options) [](#method-i-contact_post)
 ### contact_put(url, data, compatibility_options) [](#method-i-contact_put)
 ### get_url(route, object, uri, slug = nil) [](#method-i-get_url)
 ### http_delete(url, headers = nil, data = nil) [](#method-i-http_delete)
 Simple HTTP DELETE

 ### http_get(url, headers = nil) [](#method-i-http_get)
 ```
HTTPCLIENTS######
```

Simple HTTP GET

 ### http_post(url, headers = nil, data = nil) [](#method-i-http_post)
 Simple HTTP POST

 ### http_put(url, headers = nil, data = nil) [](#method-i-http_put)
 Simple HTTP PUT

 ### is_singular?(str) [](#method-i-is_singular-3F)
 ### method_missing(name, *args, &block) [](#method-i-method_missing)
 ### public_get(url, headers = nil, compatibility_options) [](#method-i-public_get)
 End [`User`](User.html) Context

 ### public_post(url, headers = nil, data, compatibility_options) [](#method-i-public_post)
 ### public_put(url, headers = nil, data, compatibility_options) [](#method-i-public_put)
 ### raw(action, url, options = nil, data = nil, base_url = nil, compatibility_options = {}, only_tracking = false, disable_data_transform = false) [](#method-i-raw)
 ### read_config_file(config_key = nil) [](#method-i-read_config_file)
 ### replace_tokens(response) [](#method-i-replace_tokens)
 ### replacements() [](#method-i-replacements)
 ### set_headers(compatibility_options, headers = nil) [](#method-i-set_headers)
 ### set_scope(scope) [](#method-i-set_scope)
 ### timeout() [](#method-i-timeout)
 Timeouts methods

 ### timeout=(t) [](#method-i-timeout-3D)
 ### user_delete(url, data, compatibility_options) [](#method-i-user_delete)
 ### user_get(url, headers = nil, compatibility_options) [](#method-i-user_get)
 Start [`User`](User.html) context

 ### user_post(url, data, compatibility_options) [](#method-i-user_post)
 ### user_put(url, data, compatibility_options) [](#method-i-user_put)
 ### verify_response_status(response, ignore_http_errors) [](#method-i-verify_response_status)
 