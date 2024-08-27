# module Companies [](#module-Companies) [](#top)
 ## Public Instance Methods
 ### create_company(data, options = nil) [](#method-i-create_company)
 ### Create company.[¶](#method-i-create_company-label-Create+company.) [↑](#top)

Create a company with data.

#### Parameters[¶](#method-i-create_company-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_company-label-Example) [↑](#top)

```
data= {title:'Company Title',alias:'Alias',website:'www.company.example.com',street1:'Company St',city:'Company City',region:'Company Region',postal\_code:'12345',country\_id:144,tax\_identifier:nil}@data=@cxf\_user.create\_company(data)
```
 ### delete_companies(data) [](#method-i-delete_companies)
 ### Delete [`Companies`](Companies.html).[¶](#method-i-delete_companies-label-Delete+Companies.) [↑](#top)

Delete a group of companies.

#### Parameters[¶](#method-i-delete_companies-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_companies-label-Example) [↑](#top)

```
data= {ids:%w[21 22]}@data=@cxf\_user.delete\_companies(data)
```
 ### get_companies(options = nil, use_post = true) [](#method-i-get_companies)
 ### Get companies.[¶](#method-i-get_companies-label-Get+companies.) [↑](#top)

Get a collection of companies.

#### Parameters[¶](#method-i-get_companies-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_companies-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_companies
```

#### Second Example[¶](#method-i-get_companies-label-Second+Example) [↑](#top)

```
options= {fields:'id, title',sort:'-id'}@data=@cxf\_user.get\_companies(options)
```

#### Third Example[¶](#method-i-get_companies-label-Third+Example) [↑](#top)

```
options= {fields:'id, title',sort:'-id'}@data=@cxf\_user.get\_companies(options,false)
```
 ### get_companies_support_data() [](#method-i-get_companies_support_data)
 ### Get companies support data.[¶](#method-i-get_companies_support_data-label-Get+companies+support+data.) [↑](#top)

Get support data of companies.

#### Example[¶](#method-i-get_companies_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_companies\_support\_data
```
 ### get_company(id, options = nil) [](#method-i-get_company)
 ### Get company.[¶](#method-i-get_company-label-Get+company.) [↑](#top)

Get a company info.

#### Parameters[¶](#method-i-get_company-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Company id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_company-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_company(21)
```

#### Second Example[¶](#method-i-get_company-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_company(21,options)
```
 ### update_company(id, data, options = nil) [](#method-i-update_company)
 ### Update company.[¶](#method-i-update_company-label-Update+company.) [↑](#top)

Update a company info.

#### Parameters[¶](#method-i-update_company-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Company id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_company-label-Example) [↑](#top)

```
data= {title:'Company Title Modified'}@data=@cxf\_user.update\_company(23,data)
```
 