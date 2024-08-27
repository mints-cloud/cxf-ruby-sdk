# module ProxyControllersMethods [](#module-ProxyControllersMethods) [](#top)
 ## Public Instance Methods
 ### index(controller_type = nil) [](#method-i-index)
 ### Index[¶](#method-i-index-label-Index) [↑](#top)

Is the base index method for all controllers, manage the headers depending on the controller type (Contact or User)

#### Parameters[¶](#method-i-index-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>controller_type
</dt>
<dd>
<p>(String) – Controller type that be called, this manages the headers to send (contact, user, pub).</p>
</dd>
</dl>
#### Return[¶](#method-i-index-label-Return) [↑](#top)

Returns the response returned by [`send_cxf_request`](ProxyControllersMethods.html#method-i-send_cxf_request)

 ### send_cxf_request(full_url, headers, controller_type, cache_result = false, time: 30) [](#method-i-send_cxf_request)
 ### Send cxf request[¶](#method-i-send_cxf_request-label-Send+cxf+request) [↑](#top)

Method used to make each request to [`Cxf`](Cxf.html), in addition to verifying and saving the response in cache for cases where it requires cache

#### Parameters[¶](#method-i-send_cxf_request-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>full_url
</dt>
<dd>
<p>(String) – URL to make the request.</p>
</dd>
<dt>headers
</dt>
<dd>
<p>(Hash|Object) – Headers to send in the request.</p>
</dd>
<dt>cache_result
</dt>
<dd>
<p>(Boolean) – This parameter controls whether the response will be cached..</p>
</dd>
<dt>time
</dt>
<dd>
<p>(Integer) – It is the time that the response will be stored in cache.</p>
</dd>
</dl>
#### Return[¶](#method-i-send_cxf_request-label-Return) [↑](#top)

Returns the response given by [`Cxf`](Cxf.html) or Redis

 ### url_need_cache?(full_url) [](#method-i-url_need_cache-3F)
 ### Url need cache?[¶](#method-i-url_need_cache-3F-label-Url+need+cache-3F) [↑](#top)

Method used to check if the given URL should be cached and for how long

#### Parameters[¶](#method-i-url_need_cache-3F-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>full_url
</dt>
<dd>
<p>(String) – URL to check if has cache.</p>
</dd>
</dl>
#### Return[¶](#method-i-url_need_cache-3F-label-Return) [↑](#top)

Returns if the URL has cache and the time to be cached

 