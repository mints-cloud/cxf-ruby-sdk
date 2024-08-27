# module CxfHelper [](#module-CxfHelper) [](#top)
 ## Public Instance Methods
 ### correct_json(data) [](#method-i-correct_json)
 ### Correct json.[¶](#method-i-correct_json-label-Correct+json.) [↑](#top)

Receives a json data and convert it to a symbolized object.

#### Parameters[¶](#method-i-correct_json-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl> ### data_transform(data) [](#method-i-data_transform)
 ### Data transform.[¶](#method-i-data_transform-label-Data+transform.) [↑](#top)

Transform a ‘data’ variable to a standardized ‘data’ variable.

#### Parameters[¶](#method-i-data_transform-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl> ### get_query_results(url, options = nil, use_post = true) [](#method-i-get_query_results)
 ### Get query results.[¶](#method-i-get_query_results-label-Get+query+results.) [↑](#top)

Method used to give the options to make a ‘post’ or ‘get’ request.

#### Parameters[¶](#method-i-get_query_results-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>url
</dt>
<dd>
<p>(String) – Url to make the request.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of <a href="#class-Cxf::User-label-Resource+collections+options+">Resource collection Options</a> shown above can be used as parameter.</p>
</dd>
<dt>use_post
</dt>
<dd>
<p>(Boolean) – Variable to determine if the request is by ‘post’ or ‘get’ functions.</p>
</dd>
</dl> 