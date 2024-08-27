# module Taxes [](#module-Taxes) [](#top)
 ## Public Instance Methods
 ### create_tax(data) [](#method-i-create_tax)
 ### Create tax.[¶](#method-i-create_tax-label-Create+tax.) [↑](#top)

Create a tax with data.

#### Parameters[¶](#method-i-create_tax-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_tax-label-Example) [↑](#top)

```
data= {title:'New Tax',tax\_percentage:100}@data=@cxf\_user.create\_tax(data)
```
 ### delete_tax(id) [](#method-i-delete_tax)
 ### Delete tax.[¶](#method-i-delete_tax-label-Delete+tax.) [↑](#top)

Delete a tax.

#### Parameters[¶](#method-i-delete_tax-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Tax id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_tax-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_tax(11)
```
 ### get_tax(id, options = nil) [](#method-i-get_tax)
 ### Get tax.[¶](#method-i-get_tax-label-Get+tax.) [↑](#top)

Get a tax info.

#### Parameters[¶](#method-i-get_tax-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Tax id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_tax-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_tax(1)
```

#### Second Example[¶](#method-i-get_tax-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_tax(1,options)
```
 ### get_taxes(options = nil) [](#method-i-get_taxes)
 ### Get taxes.[¶](#method-i-get_taxes-label-Get+taxes.) [↑](#top)

Get a collection of taxes.

#### Parameters[¶](#method-i-get_taxes-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_taxes-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_taxes
```

#### Second Example[¶](#method-i-get_taxes-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_taxes(options)
```
 ### update_tax(id, data) [](#method-i-update_tax)
 ### Update tax.[¶](#method-i-update_tax-label-Update+tax.) [↑](#top)

Update a tax info.

#### Parameters[¶](#method-i-update_tax-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Tax id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_tax-label-Example) [↑](#top)

```
data= {tax\_percentage:10}@data=@cxf\_user.update\_tax(11,data)
```
 