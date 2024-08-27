# module ProductTemplates [](#module-ProductTemplates) [](#top)
 ## Public Instance Methods
 ### create_product_template(data) [](#method-i-create_product_template)
 ### Create product template.[¶](#method-i-create_product_template-label-Create+product+template.) [↑](#top)

Create a product template with data.

#### Parameters[¶](#method-i-create_product_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_product_template-label-Example) [↑](#top)

```
data= {title:'New Product Template',slug:'new-product-template'}@data=@cxf\_user.create\_product\_template(data)
```
 ### get_product_template(id, options = nil) [](#method-i-get_product_template)
 ### Get product template.[¶](#method-i-get_product_template-label-Get+product+template.) [↑](#top)

Get a product template info.

#### Parameters[¶](#method-i-get_product_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product template id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_product_template-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_template(1)
```

#### Second Example[¶](#method-i-get_product_template-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_product\_template(1,options)
```
 ### get_product_templates(options = nil) [](#method-i-get_product_templates)
 ### Get product templates.[¶](#method-i-get_product_templates-label-Get+product+templates.) [↑](#top)

Get a collection of product templates.

#### Parameters[¶](#method-i-get_product_templates-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_product_templates-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_templates
```

#### Second Example[¶](#method-i-get_product_templates-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_product\_templates(options)
```
 ### get_product_templates_support_data() [](#method-i-get_product_templates_support_data)
 ### Get product templates support data.[¶](#method-i-get_product_templates_support_data-label-Get+product+templates+support+data.) [↑](#top)

Get support data used in product templates.

#### Example[¶](#method-i-get_product_templates_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_templates\_support\_data
```
 ### get_product_templates_support_data_from_order_items_group(id) [](#method-i-get_product_templates_support_data_from_order_items_group)
 ### Get product templates support data from order items group.[¶](#method-i-get_product_templates_support_data_from_order_items_group-label-Get+product+templates+support+data+from+order+items+group.) [↑](#top)

Get product templates support data from a order items group.

#### Parameters[¶](#method-i-get_product_templates_support_data_from_order_items_group-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Order items group id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_templates_support_data_from_order_items_group-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_templates\_support\_data\_from\_order\_items\_group(1)
```
 ### get_product_templates_support_data_from_product(id) [](#method-i-get_product_templates_support_data_from_product)
 ### Get product templates support data from product.[¶](#method-i-get_product_templates_support_data_from_product-label-Get+product+templates+support+data+from+product.) [↑](#top)

Get product templates support data from a product.

#### Parameters[¶](#method-i-get_product_templates_support_data_from_product-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_product_templates_support_data_from_product-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_product\_templates\_support\_data\_from\_product(1)
```
 ### update_product_template(id, data) [](#method-i-update_product_template)
 ### Update product template.[¶](#method-i-update_product_template-label-Update+product+template.) [↑](#top)

Update a product template info.

#### Parameters[¶](#method-i-update_product_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Product template id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_product_template-label-Example) [↑](#top)

```
data= {title:'New Product Template Modified',slug:'new-product-template'}@data=@cxf\_user.update\_product\_template(3,data)
```
 