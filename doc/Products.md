# module Products [](#module-Products) [](#top)
 ## Public Instance Methods
 ### create_product(data, options = nil) [](#method-i-create_product)
 ### Create product.[¶](#method-i-create_product-label-Create+product.) [↑](#top)

Create a product with data.

#### Parameters[¶](#method-i-create_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_product-label-Example) [↑](#top)

```
data= {title:'New Product',slug:'new-product',sku\_prefix:'sku\_prefix'}@data=@cxf\_user.create\_product(data)
```
 ### delete_product(id) [](#method-i-delete_product)
 ### Delete product.[¶](#method-i-delete_product-label-Delete+product.) [↑](#top)

Delete a product.

#### Parameters[¶](#method-i-delete_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
</dl> ### get_product(id, options = nil) [](#method-i-get_product)
 ### Get product.[¶](#method-i-get_product-label-Get+product.) [↑](#top)

Get a product info.

#### Parameters[¶](#method-i-get_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_product-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_product(3)
```

#### Second Example[¶](#method-i-get_product-label-Second+Example) [↑](#top)

```
options= {fields:"slug"}@data=@cxf\_user.get\_product(3,options)
```
 ### get_product_variant_options_config(id) [](#method-i-get_product_variant_options_config)
 ### Get product variant options config.[¶](#method-i-get_product_variant_options_config-label-Get+product+variant+options+config.) [↑](#top)

Get variant options config used in a product.

#### Parameters[¶](#method-i-get_product_variant_options_config-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_variant_options_config-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_variant\_options\_config(1)
```
 ### get_products(options = nil, use_post = true) [](#method-i-get_products)
 ### Get products.[¶](#method-i-get_products-label-Get+products.) [↑](#top)

Get a collection of products.

#### Parameters[¶](#method-i-get_products-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_products-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_products
```

#### Second Example[¶](#method-i-get_products-label-Second+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_products(options)
```

#### Third Example[¶](#method-i-get_products-label-Third+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_products(options,false)
```
 ### get_products_support_data() [](#method-i-get_products_support_data)
 ### Get product support data.[¶](#method-i-get_products_support_data-label-Get+product+support+data.) [↑](#top)

Get support data used in products.

#### Example[¶](#method-i-get_products_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_products\_support\_data
```
 ### revert_published_product(id) [](#method-i-revert_published_product)
 ### Revert published product.[¶](#method-i-revert_published_product-label-Revert+published+product.) [↑](#top)

Revert a published product.

#### Parameters[¶](#method-i-revert_published_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
</dl>
#### Example[¶](#method-i-revert_published_product-label-Example) [↑](#top)

```
@data=@cxf\_user.revert\_published\_product(2)
```
 ### schedule_product(id, data) [](#method-i-schedule_product)
 ### Schedule product.[¶](#method-i-schedule_product-label-Schedule+product.) [↑](#top)

Schedule a product.

#### Parameters[¶](#method-i-schedule_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-schedule_product-label-Example) [↑](#top)

```
data= {scheduled\_at:'1970-01-01 00:00:00'}@data=@cxf\_user.schedule\_product(2,data)
```
 ### update_product(id, data, options = nil) [](#method-i-update_product)
 ### Update product.[¶](#method-i-update_product-label-Update+product.) [↑](#top)

Update a product info.

#### Parameters[¶](#method-i-update_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_product-label-Example) [↑](#top)

```
data= {title:'New Product Modified',slug:'new-product'}@data=@cxf\_user.update\_product(9,data)
```
 ### update_product_variations_config(product_id, data) [](#method-i-update_product_variations_config)
 ### Update product variations config.[¶](#method-i-update_product_variations_config-label-Update+product+variations+config.) [↑](#top)

Update config of product variations of a product.

#### Parameters[¶](#method-i-update_product_variations_config-label-Parameters) [↑](#top)
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
</dl> 