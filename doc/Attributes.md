# module Attributes [](#module-Attributes) [](#top)
 ## Public Instance Methods
 ### create_attribute(data) [](#method-i-create_attribute)
 ### Create attribute.[¶](#method-i-create_attribute-label-Create+attribute.) [↑](#top)

Create an attribute with data.

#### Parameters[¶](#method-i-create_attribute-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_attribute-label-Example) [↑](#top)

```
data= {title:"New Attribute",object\_type:"orders",slug:"new\_attribute",attribute\_group\_id:1,data\_type\_enum:10}@data=@cxf\_user.create\_attribute(data)
```
 ### get_attribute(id) [](#method-i-get_attribute)
 ### Get attribute.[¶](#method-i-get_attribute-label-Get+attribute.) [↑](#top)

Get an attribute info.

#### Parameters[¶](#method-i-get_attribute-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Attribute id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_attribute-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_attribute(1)
```
 ### get_attributes() [](#method-i-get_attributes)
 ### Get attributes.[¶](#method-i-get_attributes-label-Get+attributes.) [↑](#top)

Get a collection of attributes.

#### Example[¶](#method-i-get_attributes-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_attributes
```
 ### get_attributes_data_types() [](#method-i-get_attributes_data_types)
 ### Get attributes data types.[¶](#method-i-get_attributes_data_types-label-Get+attributes+data+types.) [↑](#top)

Get data types used in attributes.

#### Example[¶](#method-i-get_attributes_data_types-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_attributes\_data\_types
```
 ### get_sub_attributes(options) [](#method-i-get_sub_attributes)
 ### Get sub attributes.[¶](#method-i-get_sub_attributes-label-Get+sub+attributes.) [↑](#top)

Get sub attributes with a slug.

#### Parameters[¶](#method-i-get_sub_attributes-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_sub_attributes-label-Example) [↑](#top)
 ### update_attribute(id, data) [](#method-i-update_attribute)
 ### Update attribute.[¶](#method-i-update_attribute-label-Update+attribute.) [↑](#top)

Update an attribute info.

#### Parameters[¶](#method-i-update_attribute-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Attribute id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_attribute-label-Example) [↑](#top)

```
data= {title:'New Attribute Modified',object\_type:'orders',slug:'new\_attribute',attribute\_group\_id:1,data\_type\_enum:10}@data=@cxf\_user.update\_attribute(292,data)
```
 