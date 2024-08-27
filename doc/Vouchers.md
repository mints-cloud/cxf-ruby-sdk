# module Vouchers [](#module-Vouchers) [](#top)
 ## Public Instance Methods
 ### create_voucher(data) [](#method-i-create_voucher)
 ### Create voucher.[¶](#method-i-create_voucher-label-Create+voucher.) [↑](#top)

Create voucher code.

#### Parameters[¶](#method-i-create_voucher-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_voucher-label-Example) [↑](#top)

```
data= {title:'Voucher title',voucher\_code:'XAZWQ12MP',amount:100,start\_date:'2023-03-28T10:20:00-06:00',end\_date:'2023-03-31T10:20:00-06:00',is\_redeemed:false}@data=@cxf\_user.create\_voucher(data)
```
 ### get_voucher(id, options = nil) [](#method-i-get_voucher)
 ### Get vouchers.[¶](#method-i-get_voucher-label-Get+vouchers.) [↑](#top)

Get a specific voucher.

#### Parameters[¶](#method-i-get_voucher-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Voucher id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_voucher-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_voucher(1)
```

#### Second Example[¶](#method-i-get_voucher-label-Second+Example) [↑](#top)

```
options= {fields:'id,title'}@data=@cxf\_user.get\_voucher(1,options)
```
 ### get_vouchers(options = nil, use_post = true) [](#method-i-get_vouchers)
 ### Get vouchers.[¶](#method-i-get_vouchers-label-Get+vouchers.) [↑](#top)

Get a collection of vouchers.

#### Parameters[¶](#method-i-get_vouchers-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_vouchers-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_vouchers
```

#### Second Example[¶](#method-i-get_vouchers-label-Second+Example) [↑](#top)

```
options= {fields:'id,title'}@data=@cxf\_user.get\_vouchers(options)
```

#### Third Example[¶](#method-i-get_vouchers-label-Third+Example) [↑](#top)

```
options= {fields:'id,title'}@data=@cxf\_user.get\_vouchers(options,true)
```
 ### update_voucher(id, data) [](#method-i-update_voucher)
 ### Update voucher.[¶](#method-i-update_voucher-label-Update+voucher.) [↑](#top)

Update voucher code.

#### Parameters[¶](#method-i-update_voucher-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Voucher id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_voucher-label-Example) [↑](#top)

```
data= {title:'New voucher title',voucher\_code:'XAZWQ12MP2',amount:250,start\_date:'2023-03-27T10:20:00-06:00',end\_date:'2023-03-30T10:20:00-06:00'}@data=@cxf\_user.update\_voucher(1,data)
```
 