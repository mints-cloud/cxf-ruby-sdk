# module Taxonomies [](#module-Taxonomies) [](#top)
 ## Public Instance Methods
 ### create_taxonomy(data, options = nil) [](#method-i-create_taxonomy)
 ### Create taxonomy.[¶](#method-i-create_taxonomy-label-Create+taxonomy.) [↑](#top)

Create a taxonomy with data.

#### Parameters[¶](#method-i-create_taxonomy-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_taxonomy-label-Example) [↑](#top)

```
data= {title:'New Taxonomy',slug:'new-taxonomy',object\_type:'contacts'}@data=@cxf\_user.create\_taxonomy(data)
```
 ### get_taxonomies(options = nil, use_post = true) [](#method-i-get_taxonomies)
 ### Get taxonomies.[¶](#method-i-get_taxonomies-label-Get+taxonomies.) [↑](#top)

Get a collection of taxonomies.

#### Parameters[¶](#method-i-get_taxonomies-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
<dt>use_post
</dt>
<dd>
<p>(Boolean) – Variable to determine if the request is by ‘post’ or ‘get’ functions.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_taxonomies-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_taxonomies
```

#### Second Example[¶](#method-i-get_taxonomies-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_taxonomies(options)
```

#### Third Example[¶](#method-i-get_taxonomies-label-Third+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_taxonomies(options,false)
```
 ### get_taxonomies_for_object(options) [](#method-i-get_taxonomies_for_object)
 ### Get taxonomies for object.[¶](#method-i-get_taxonomies_for_object-label-Get+taxonomies+for+object.) [↑](#top)

Get taxonomies for object.

#### Parameters[¶](#method-i-get_taxonomies_for_object-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_taxonomies_for_object-label-Example) [↑](#top)

```
options= {object\_type:"contacts",object\_id:1}@data=@cxf\_user.get\_taxonomies\_for\_object(options)
```
 ### get_taxonomies_support_data() [](#method-i-get_taxonomies_support_data)
 ### Get taxonomies support data.[¶](#method-i-get_taxonomies_support_data-label-Get+taxonomies+support+data.) [↑](#top)

Get support data used in taxonomies.

#### Example[¶](#method-i-get_taxonomies_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_taxonomies\_support\_data
```
 ### get_taxonomy(id, options = nil) [](#method-i-get_taxonomy)
 ### Get taxonomy.[¶](#method-i-get_taxonomy-label-Get+taxonomy.) [↑](#top)

Get a taxonomy info.

#### Parameters[¶](#method-i-get_taxonomy-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Taxonomy id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_taxonomy-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_taxonomy(1)
```

#### Second Example[¶](#method-i-get_taxonomy-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_taxonomy(1,options)
```
 ### sync_taxonomies_for_object(data) [](#method-i-sync_taxonomies_for_object)
 ## [`Taxonomies`](Taxonomies.html)[¶](#method-i-sync_taxonomies_for_object-label-Taxonomies) [↑](#top)

### Sync taxonomies for object.[¶](#method-i-sync_taxonomies_for_object-label-Sync+taxonomies+for+object.) [↑](#top)

Sync taxonomies for object.

#### Parameters[¶](#method-i-sync_taxonomies_for_object-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-sync_taxonomies_for_object-label-Example) [↑](#top)

```
data= {object\_type:'contacts',object\_id:1}@data=@cxf\_user.sync\_taxonomies\_for\_object(data)
```
 ### update_taxonomy(id, data, options = nil) [](#method-i-update_taxonomy)
 ### Update taxonomy.[¶](#method-i-update_taxonomy-label-Update+taxonomy.) [↑](#top)

Update a taxonomy info.

#### Parameters[¶](#method-i-update_taxonomy-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Taxonomy id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_taxonomy-label-Example) [↑](#top)

```
data= {title:"New Taxonomy Modified",slug:"new-taxonomy",object\_type:"contacts"}@data=@cxf\_user.update\_taxonomy(104,data)
```
 