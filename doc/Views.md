# module Views [](#module-Views) [](#top)
 ## Public Instance Methods
 ### create_view(data) [](#method-i-create_view)
 ### Create export.[¶](#method-i-create_view-label-Create+export.) [↑](#top)

Create an export with data.

#### Parameters[¶](#method-i-create_view-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_view-label-Example) [↑](#top)

```
data= {title:'New configuration',slug:'new-configuration',object\_model:'Contact',config\_json:{}
}@data=@cxf\_user.create\_export(data)
```
 ### get_view(id) [](#method-i-get_view)
 ### Get export.[¶](#method-i-get_view-label-Get+export.) [↑](#top)

Get an export configuration info.

#### Parameters[¶](#method-i-get_view-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Export configuration id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_view-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_export(10)
```
 ### get_views(options = nil) [](#method-i-get_views)
 ### Get views.[¶](#method-i-get_views-label-Get+views.) [↑](#top)

Get a collection of views.

#### Parameters[¶](#method-i-get_views-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_views-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_views
```

#### Second Example[¶](#method-i-get_views-label-Second+Example) [↑](#top)

```
options= {sort:'id'}@data=@cxf\_user.get\_views(options)
```
 ### update_view(id, data) [](#method-i-update_view)
 ### Update export configuration.[¶](#method-i-update_view-label-Update+export+configuration.) [↑](#top)

Update an export configuration info.

#### Parameters[¶](#method-i-update_view-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Export configuration id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_view-label-Example) [↑](#top)

```
data= {title:'New configuration',slug:'new-configuration',object\_model:'Contact',config\_json:{}
}@data=@cxf\_user.update\_export(36,data)
```
 