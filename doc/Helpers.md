# module Helpers [](#module-Helpers) [](#top)
 ## Public Instance Methods
 ### generate_seed(object_type, id) [](#method-i-generate_seed)
 ### Generate seed.[¶](#method-i-generate_seed-label-Generate+seed.) [↑](#top)

Generate seed using object type and object type id.

#### Parameters[¶](#method-i-generate_seed-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>objectType
</dt>
<dd>
<p>(String) – <a href="Object.html"><code>Object</code></a> type.</p>
</dd>
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> type id.</p>
</dd>
</dl>
#### Example[¶](#method-i-generate_seed-label-Example) [↑](#top)

```
@data=@cxf\_user.generate\_seed('contacts',1)
```
 ### get_activities_by_object_type_and_id(object_type, id) [](#method-i-get_activities_by_object_type_and_id)
 ### Get activities by object type and id.[¶](#method-i-get_activities_by_object_type_and_id-label-Get+activities+by+object+type+and+id.) [↑](#top)

Get activities using an object type and object type id.

#### Parameters[¶](#method-i-get_activities_by_object_type_and_id-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>object_type
</dt>
<dd>
<p>(String) – <a href="Object.html"><code>Object</code></a> type.</p>
</dd>
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> type id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_activities_by_object_type_and_id-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_activities\_by\_object\_type\_and\_id('contacts',1)
```
 ### get_available_types_from_usage(usage) [](#method-i-get_available_types_from_usage)
 ### Get available types from usage.[¶](#method-i-get_available_types_from_usage-label-Get+available+types+from+usage.) [↑](#top)

Get available types by usage.

#### Parameters[¶](#method-i-get_available_types_from_usage-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>usage
</dt>
<dd>
<p>() – …</p>
</dd>
</dl> ### get_dice_coefficient(options) [](#method-i-get_dice_coefficient)
 ### Get dice coefficient.[¶](#method-i-get_dice_coefficient-label-Get+dice+coefficient.) [↑](#top)

Get dice coefficient.

#### Parameters[¶](#method-i-get_dice_coefficient-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_dice_coefficient-label-Example) [↑](#top)

```
options= {table:'contacts',field:'id',word:'1'}@data=@cxf\_user.get\_dice\_coefficient(options)
```
 ### get_magic_link_config() [](#method-i-get_magic_link_config)
 ### Get magic link config.[¶](#method-i-get_magic_link_config-label-Get+magic+link+config.) [↑](#top)

Get config used in magic links.

#### Example[¶](#method-i-get_magic_link_config-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_magic\_link\_config
```
 ### get_permission_menu() [](#method-i-get_permission_menu)
 ### Get permission menu.[¶](#method-i-get_permission_menu-label-Get+permission+menu.) [↑](#top)

Get permission menu.

#### Example[¶](#method-i-get_permission_menu-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_permission\_menu
```
 ### slugify(data) [](#method-i-slugify)
 ### Slugify.[¶](#method-i-slugify-label-Slugify.) [↑](#top)

Slugify a text using an object type.

#### Parameters[¶](#method-i-slugify-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-slugify-label-Example) [↑](#top)
 