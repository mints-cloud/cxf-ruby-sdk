# class Cxf::Pub [](#class-Cxf::Pub) [](#top)
## Public context API[¶](#class-Cxf::Pub-label-Public+context+API) [↑](#top)

[`Pub`](Pub.html) class contains functions that needs only an API key as authentication

## Usage example[¶](#class-Cxf::Pub-label-Usage+example) [↑](#top)

### For [`Cxf::BaseController`](BaseController.html) inheritance:[¶](#class-Cxf::Pub-label-For+Cxf-3A-3ABaseController+inheritance-3A) [↑](#top)

If the controller is inheriting from [`Cxf::BaseController`](BaseController.html), Only use the class variable **cxf\_pub** _Example:_

```
@cxf\_pub.get\_stories
```

### For standalone usage:[¶](#class-Cxf::Pub-label-For+standalone+usage-3A) [↑](#top)

Initialize

```
pub=Cxf::Pub.new(cxf\_url,api\_key)
```

or if host and api\_key are provided by cxf\_config.yml.erb

```
pub=Cxf::Pub.new
```

Call any function

```
pub.get\_products
```

## Single resource options[¶](#class-Cxf::Pub-label-Single+resource+options) [↑](#top)

- `include` - [_String_] Specify additional information to be included in the results from the objects relations. _Example:_

- `attributes` - [_Boolean_] If present, attributes will be returned for each record in the results. _Example:_

- `taxonomies` - [_Boolean_] If present, taxonomies will be returned for each record in the results. _Example:_

- `tags` - [_Boolean_] If present, tags will be returned for each record in the results. _Example:_

- `fields` - [_String_] Specify the fields that you want to be returned. If empty, all fields are returned. The object index can also be used to specify specific fields from relations. _Example:_

## Resource collections options[¶](#class-Cxf::Pub-label-Resource+collections+options) [↑](#top)

- `search` - [_String_] If present, it will search for records matching the search string. _Example:_

- `scopes` - [_String_] If present, it will apply the specified Model’s scopes. _Example:_

- `filters` - [_String_] This is a powerful parameter that allows the data to be filtered by any of its fields. Currently only exact matches are supported. _Example:_

- `jfilters` - [_String_] A complex filter configuration, as used in segments, in JSON format, base64 encoded and URLencoded. _Example:_

- `sort` - [_String_] The name of the field to perform the sort. Prefix the value with a minus sign - for ascending order. _Example:_

 ## Attributes
 ### client[R] [](#attribute-i-client)
 ## Public Class Methods
 ### new( host, api_key, contact_token_id = nil, visit_id = nil, debug = false, timeouts = {} ) [](#method-c-new)
 ### Initialize.[¶](#method-c-new-label-Initialize.) [↑](#top)

Class constructor.

#### Parameters[¶](#method-c-new-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>host
</dt>
<dd>
<p>(String) – It’s the visitor IP.</p>
</dd>
<dt>api_key
</dt>
<dd>
<p>(String) – <a href="../Cxf.html"><code>Cxf</code></a> instance api key.</p>
</dd>
<dt>contact_token_id
</dt>
<dd>
<p>(Integer) – Cookie ‘cxf_contact_id’ value (cxf_contact_token).</p>
</dd>
</dl>
#### Return[¶](#method-c-new-label-Return) [↑](#top)

Returns a [`Client`](Client.html) object.

 ## Public Instance Methods
 ### get_client() [](#method-i-get_client)
 ### register_visit(request, ip = nil, user_agent = nil, url = nil) [](#method-i-register_visit)
 ### Register Visit.[¶](#method-i-register_visit-label-Register+Visit.) [↑](#top)

Register a ghost/contact visit in Cxf.Cloud.

#### Parameters[¶](#method-i-register_visit-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>request
</dt>
<dd>
<p>(ActionDispatch::Request) – request.</p>
</dd>
<dt>ip
</dt>
<dd>
<p>(String) – It’s the visitor IP.</p>
</dd>
<dt>user_agent
</dt>
<dd>
<p>(String) – The visitor’s browser user agent.</p>
</dd>
<dt>url
</dt>
<dd>
<p>(String) – URL visited.</p>
</dd>
</dl>
#### Example[¶](#method-i-register_visit-label-Example) [↑](#top)

```
request= {"remote\_ip"=\>"http://1.1.1.1/","user\_agent"=\>"User Agent","fullpath"=\>"https://fullpath/example"}@data=@cxf\_pub.register\_visit(request,request["remote\_ip"],request["user\_agent"],request["fullpath"])
```
 ### register_visit_timer(visit, time) [](#method-i-register_visit_timer)
 ### Register Visit timer.[¶](#method-i-register_visit_timer-label-Register+Visit+timer.) [↑](#top)

Register a page visit time.

#### Parameters[¶](#method-i-register_visit_timer-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>visit
</dt>
<dd>
<p>(String) – It’s the visitor IP.</p>
</dd>
<dt>time
</dt>
<dd>
<p>(Integer) – The visitor’s browser user agent.</p>
</dd>
</dl>
#### Example[¶](#method-i-register_visit_timer-label-Example) [↑](#top)

```
@data=@cxf\_pub.register\_visit\_timer("60da2325d29acc7e55684472",4)
```
 ### send_user_magic_link(email_or_phone, template_slug, redirect_url = '', life_time = 1440, max_visits = nil, driver = 'email') [](#method-i-send_user_magic_link)
 