# module ProductVariations [](#module-ProductVariations) [](#top)
 ## Public Instance Methods
 ### create_product_variation(data) [](#method-i-create_product_variation)
 ### Create product variation.[¶](#method-i-create_product_variation-label-Create+product+variation.) [↑](#top)

Create a product variation with data.

#### Parameters[¶](#method-i-create_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_product_variation-label-Example) [↑](#top)

```
data= {title:'New Product Variation',sku:'NEW-PRODUCT-VARIATION-SKU',product\_id:5,supplier:36,prices:[
 {id:1,value:300}
 ]
}@data=@cxf\_user.create\_product\_variation(data)
```
 ### delete_product_variation(id) [](#method-i-delete_product_variation)
 ### Delete product variation.[¶](#method-i-delete_product_variation-label-Delete+product+variation.) [↑](#top)

Delete a product variation.

#### Parameters[¶](#method-i-delete_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product variation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_product_variation-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_product\_variation(528)
```
 ### generate_product_variation(product_id, data) [](#method-i-generate_product_variation)
 ### Generate product variation.[¶](#method-i-generate_product_variation-label-Generate+product+variation.) [↑](#top)

Generate a product variation.

#### Parameters[¶](#method-i-generate_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>product_id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl> ### get_product_from_product_variation(product_id) [](#method-i-get_product_from_product_variation)
 ### Get product from product variation.[¶](#method-i-get_product_from_product_variation-label-Get+product+from+product+variation.) [↑](#top)

Get a product from a product variation.

#### Parameters[¶](#method-i-get_product_from_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>product_id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_from_product_variation-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_from\_product\_variation(1)
```
 ### get_product_variation(id) [](#method-i-get_product_variation)
 ### Get product variation.[¶](#method-i-get_product_variation-label-Get+product+variation.) [↑](#top)

Get a product variation info.

#### Parameters[¶](#method-i-get_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product variation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_variation-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_variation(100)
```
 ### get_product_variations() [](#method-i-get_product_variations)
 ### Get product variations.[¶](#method-i-get_product_variations-label-Get+product+variations.) [↑](#top)

Get a collection of product variations.

#### Parameters[¶](#method-i-get_product_variations-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_variations-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_variations
```
 ### set_prices_to_product_variations(data) [](#method-i-set_prices_to_product_variations)
 ### Set prices to product variations.[¶](#method-i-set_prices_to_product_variations-label-Set+prices+to+product+variations.) [↑](#top)

Set prices to product variations.

#### Parameters[¶](#method-i-set_prices_to_product_variations-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-set_prices_to_product_variations-label-Example) [↑](#top)

```
skus= [
 {id:100}
]prices= [
 {id:1,value:1259},
 {id:2,value:1260}
]data= {skus:skus,prices:prices}.to\_json@data=@cxf\_user.set\_prices\_to\_product\_variations(data)
```
 ### update_product_variation(id, data) [](#method-i-update_product_variation)
 ### Update product variation.[¶](#method-i-update_product_variation-label-Update+product+variation.) [↑](#top)

Update a product variation info.

#### Parameters[¶](#method-i-update_product_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product variation id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_product_variation-label-Example) [↑](#top)

```
data= {title:'New Product Variation Modified',cost:123,prices:[
 {id:1,value:400}
 ]
}@data=@cxf\_user.update\_product\_variation(528,data)
```
 