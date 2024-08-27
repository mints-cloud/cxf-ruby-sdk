# module AttributeGroups [](#module-AttributeGroups) [](#top)
 ## Public Instance Methods
 ### create_attribute_group(data) [](#method-i-create_attribute_group)
 ### Create attribute group.[¶](#method-i-create_attribute_group-label-Create+attribute+group.) [↑](#top)

Create an attribute group with data.

#### Parameters[¶](#method-i-create_attribute_group-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_attribute_group-label-Example) [↑](#top)

```
data= {title:'New Attribute Group',object\_type:'contacts'}@data=@cxf\_user.create\_attribute\_group(data)
```
 ### get_attribute_group(id) [](#method-i-get_attribute_group)
 ### Get attribute group.[¶](#method-i-get_attribute_group-label-Get+attribute+group.) [↑](#top)

Get an attribute group info.

#### Parameters[¶](#method-i-get_attribute_group-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Attribute group id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_attribute_group-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_attribute\_group(10)
```
 ### get_attribute_groups(options = nil) [](#method-i-get_attribute_groups)
 ### Get attribute groups.[¶](#method-i-get_attribute_groups-label-Get+attribute+groups.) [↑](#top)

Get a collection of attribute groups.

#### Parameters[¶](#method-i-get_attribute_groups-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_attribute_groups-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_attribute\_groups
```

#### Second Example[¶](#method-i-get_attribute_groups-label-Second+Example) [↑](#top)

```
options= {sort:'id'}@data=@cxf\_user.get\_attribute\_groups(options)
```
 ### get_attribute_groups_data_types() [](#method-i-get_attribute_groups_data_types)
 ### Get attribute groups data types.[¶](#method-i-get_attribute_groups_data_types-label-Get+attribute+groups+data+types.) [↑](#top)

Get data types used in attribute groups.

#### Example[¶](#method-i-get_attribute_groups_data_types-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_attribute\_groups\_data\_types
```
 ### update_attribute_group(id, data) [](#method-i-update_attribute_group)
 ### Update attribute group.[¶](#method-i-update_attribute_group-label-Update+attribute+group.) [↑](#top)

Update an attribute group info.

#### Parameters[¶](#method-i-update_attribute_group-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Attribute group id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_attribute_group-label-Example) [↑](#top)

```
data= {title:'New Attribute Group Modified',object\_type:'contacts',slug:'new-attribute-group',description:'New description'}@data=@cxf\_user.update\_attribute\_group(36,data)
```
 