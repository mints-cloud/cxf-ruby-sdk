# module ItemPrices [](#module-ItemPrices) [](#top)
 ## Public Instance Methods
 ### create_item_price(data) [](#method-i-create_item_price)
 ### Create item price.[¶](#method-i-create_item_price-label-Create+item+price.) [↑](#top)

Create a item price with data.

#### Parameters[¶](#method-i-create_item_price-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_item_price-label-Example) [↑](#top)

```
data= {price\_list:[
 {id:1},
 {id:2}
 ],price\_list\_id:1,title:'New Item Price'}@data=@cxf\_user.create\_item\_price(data)
```
 ### delete_item_price(id) [](#method-i-delete_item_price)
 ### Delete item price.[¶](#method-i-delete_item_price-label-Delete+item+price.) [↑](#top)

Delete a item price.

#### Parameters[¶](#method-i-delete_item_price-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Item price id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_item_price-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_item\_price(803)
```
 ### get_item_price(id, options = nil) [](#method-i-get_item_price)
 ### Get item price.[¶](#method-i-get_item_price-label-Get+item+price.) [↑](#top)

Get a item price info.

#### Parameters[¶](#method-i-get_item_price-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Item price id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_item_price-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_item\_price(1)
```

#### Second Example[¶](#method-i-get_item_price-label-Second+Example) [↑](#top)

```
options= {fields:'price\_cents'}@data=@cxf\_user.get\_item\_price(1,options)
```
 ### get_item_prices(options = nil) [](#method-i-get_item_prices)
 ### Get item prices.[¶](#method-i-get_item_prices-label-Get+item+prices.) [↑](#top)

Get a collection of item prices.

#### Parameters[¶](#method-i-get_item_prices-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_item_prices-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_item\_prices
```

#### Second Example[¶](#method-i-get_item_prices-label-Second+Example) [↑](#top)

```
options= {fields:'price\_cents'}@data=@cxf\_user.get\_item\_prices(options)
```
 ### update_item_price(id, data) [](#method-i-update_item_price)
 ### Update item price.[¶](#method-i-update_item_price-label-Update+item+price.) [↑](#top)

Update a item price info.

#### Parameters[¶](#method-i-update_item_price-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Order item price id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_item_price-label-Example) [↑](#top)

```
data= {price:12345}@data=@cxf\_user.update\_item\_price(1,data)
```
 