# module Skus [](#module-Skus) [](#top)
 ## Public Instance Methods
 ### create_sku(data, options = nil) [](#method-i-create_sku)
 ### Create sku.[¶](#method-i-create_sku-label-Create+sku.) [↑](#top)

Create a sku with data.

#### Parameters[¶](#method-i-create_sku-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_sku-label-Example) [↑](#top)

```
data= {sku:'NEW-SKU',title:'New Sku',slug:'new-sku',product\_id:1}@data=@cxf\_user.create\_sku(data)
```
 ### delete_sku(id) [](#method-i-delete_sku)
 ### Delete sku.[¶](#method-i-delete_sku-label-Delete+sku.) [↑](#top)

Delete a sku.

#### Parameters[¶](#method-i-delete_sku-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Sku id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_sku-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_sku(531)
```
 ### get_sku(id, options = nil) [](#method-i-get_sku)
 ### Get sku.[¶](#method-i-get_sku-label-Get+sku.) [↑](#top)

Get a sku info.

#### Parameters[¶](#method-i-get_sku-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Sku id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_sku-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_sku(1)
```

#### Second Example[¶](#method-i-get_sku-label-Second+Example) [↑](#top)

```
options= {fields:'title, sku'}@data=@cxf\_user.get\_sku(1,options)
```
 ### get_skus(options = nil) [](#method-i-get_skus)
 ### Get skus.[¶](#method-i-get_skus-label-Get+skus.) [↑](#top)

Get a collection of skus.

#### Parameters[¶](#method-i-get_skus-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_skus-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_skus
```

#### Second Example[¶](#method-i-get_skus-label-Second+Example) [↑](#top)

```
options= {fields:'sku'}@data=@cxf\_user.get\_skus(options)
```
 ### update_sku(id, data) [](#method-i-update_sku)
 ### Update sku.[¶](#method-i-update_sku-label-Update+sku.) [↑](#top)

Update a sku info.

#### Parameters[¶](#method-i-update_sku-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Sku id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_sku-label-Example) [↑](#top)

```
data= {sku:'NEW-SKU-XXXIX'}@data=@cxf\_user.update\_sku(531,data)
```
 