# module BlockTemplates [](#module-BlockTemplates) [](#top)
 ## Public Instance Methods
 ### create_block_template(data, options = nil) [](#method-i-create_block_template)
 ### Create block template.[¶](#method-i-create_block_template-label-Create+block+template.) [↑](#top)

Create a block template with data.

#### Parameters[¶](#method-i-create_block_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_block_template-label-Example) [↑](#top)

```
data= {title:'New block Template',slug:'new-block-template-slug'}@data=@cxf\_user.create\_block\_template(data)
```
 ### get_block_template(id, options = nil) [](#method-i-get_block_template)
 ### Get block template.[¶](#method-i-get_block_template-label-Get+block+template.) [↑](#top)

Get a block template info.

#### Parameters[¶](#method-i-get_block_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block template id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_block_template-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_block\_template(2)
```

#### Second Example[¶](#method-i-get_block_template-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_block\_template(1,options)
```
 ### get_block_templates(options = nil) [](#method-i-get_block_templates)
 ### Get block templates.[¶](#method-i-get_block_templates-label-Get+block+templates.) [↑](#top)

Get a collection of block templates.

#### Parameters[¶](#method-i-get_block_templates-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_block_templates-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_block\_templates
```

#### Second Example[¶](#method-i-get_block_templates-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_block\_templates(options)
```
 ### update_block_template(id, data) [](#method-i-update_block_template)
 ### Update block template.[¶](#method-i-update_block_template-label-Update+block+template.) [↑](#top)

Update a block template info.

#### Parameters[¶](#method-i-update_block_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block template id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_block_template-label-Example) [↑](#top)

```
data= {title:'New block Template Modified'}@data=@cxf\_user.update\_block\_template(3,data)
```
 