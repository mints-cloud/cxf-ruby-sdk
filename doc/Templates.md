# module Templates [](#module-Templates) [](#top)
 ## Public Instance Methods
 ### create_template(data, options = nil) [](#method-i-create_template)
 ### Create template.[¶](#method-i-create_template-label-Create+template.) [↑](#top)

Create a template with data.

#### Parameters[¶](#method-i-create_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_template-label-Example) [↑](#top)

```
data= {title:'New Template',slug:'new/template-slug'}@data=@cxf\_user.create\_template(data)
```
 ### get_template(id, options = nil) [](#method-i-get_template)
 ### Get template.[¶](#method-i-get_template-label-Get+template.) [↑](#top)

Get a template info.

#### Parameters[¶](#method-i-get_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – template id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_template-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_template(2)
```

#### Second Example[¶](#method-i-get_template-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_template(1,options)
```
 ### get_templates(options = nil) [](#method-i-get_templates)
 ### Get templates.[¶](#method-i-get_templates-label-Get+templates.) [↑](#top)

Get a collection of templates.

#### Parameters[¶](#method-i-get_templates-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_templates-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_templates
```

#### Second Example[¶](#method-i-get_templates-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_templates(options)
```
 ### update_template(id, data) [](#method-i-update_template)
 ### Update template.[¶](#method-i-update_template-label-Update+template.) [↑](#top)

Update a template info.

#### Parameters[¶](#method-i-update_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – template id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_template-label-Example) [↑](#top)

```
data= {title:'New Template Modified'}@data=@cxf\_user.update\_template(3,data)
```
 