# class Cxf::User [](#class-Cxf::User) [](#top)
## [`User`](User.html) context API[¶](#class-Cxf::User-label-User+context+API) [↑](#top)

[`User`](User.html) class contains functions that needs an API key and a session token as authentication

## Usage example[¶](#class-Cxf::User-label-Usage+example) [↑](#top)

Initialize

```
client=Cxf::User.new(cxf\_url,api\_key)
```

Call any function

```
client.get\_contacts
```

## Single resource options[¶](#class-Cxf::User-label-Single+resource+options) [↑](#top)

- `include` - [String] include a relationship

- `attributes` - [Boolean] attach attributes to response

- `tags` - [Boolean] attach tags to response

- `taxonomies` - [Boolean] attach categories to response

## Resource collections options[¶](#class-Cxf::User-label-Resource+collections+options) [↑](#top)

- `search` - [String] filter by a search word

- `scopes` - [String] filter by a scope

- `filters` - [String] filter by where clauses

- `jfilters` - [String] filter using complex condition objects (this filter use mongo queries)

- `afilters` - [String] filter using complex condition objects (this filter use postgresql queries)

- `rfilters` - [String] filter using complex condition objects from relationships

- `dfilters` - [String] filter using conditions based on dates

- `fields` - [String] indicates the columns that will be selected

- `sort` - [String] indicates the columns that will be selected

 ## Attributes
 ### client[R] [](#attribute-i-client)
 ## Public Class Methods
 ### new(host, api_key, session_token = nil, refresh_token = nil, debug = false, timeouts = {}) [](#method-c-new)
 ## Public Instance Methods
 ### get_client() [](#method-i-get_client)
 ### login(email, password) [](#method-i-login)
 ### magic_link_login(token) [](#method-i-magic_link_login)
 ### send_magic_link(email, redirect_url = '', life_time = 24) [](#method-i-send_magic_link)
 ### Send magic link to user[¶](#method-i-send_magic_link-label-Send+magic+link+to+user) [↑](#top)
 