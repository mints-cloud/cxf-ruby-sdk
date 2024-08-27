# module PriceList [](#module-PriceList) [](#top)
 ## Public Instance Methods
 ### create_price_list(data) [](#method-i-create_price_list)
 ### Create price list.[¶](#method-i-create_price_list-label-Create+price+list.) [↑](#top)

Create a price list with data.

#### Parameters[¶](#method-i-create_price_list-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_price_list-label-Example) [↑](#top)

```
data= {title:'New Price List'}@data=@cxf\_user.create\_price\_list(data)
```
 ### get_price_list(id, options = nil) [](#method-i-get_price_list)
 ### Get price list.[¶](#method-i-get_price_list-label-Get+price+list.) [↑](#top)

Get a price list info.

#### Parameters[¶](#method-i-get_price_list-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Price list id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_price_list-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_price\_list(1)
```

#### Second Example[¶](#method-i-get_price_list-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_price\_list(1,options)
```
 ### get_price_lists(options = nil, use_post = true) [](#method-i-get_price_lists)
 ### Get price lists.[¶](#method-i-get_price_lists-label-Get+price+lists.) [↑](#top)

Get a collection of price lists.

#### Parameters[¶](#method-i-get_price_lists-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_price_lists-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_price\_lists
```

#### Second Example[¶](#method-i-get_price_lists-label-Second+Example) [↑](#top)

```
options= {fields:"title"}@data=@cxf\_user.get\_price\_lists(options)
```
 ### update_price_list(id, data) [](#method-i-update_price_list)
 ### Update price list.[¶](#method-i-update_price_list-label-Update+price+list.) [↑](#top)

Update a price list info.

#### Parameters[¶](#method-i-update_price_list-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Price list id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_price_list-label-Example) [↑](#top)

```
data= {title:'New Price List Modified'}@data=@cxf\_user.update\_price\_list(8,data)
```
 