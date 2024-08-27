# module StoryTemplates [](#module-StoryTemplates) [](#top)
 ## Public Instance Methods
 ### create_story_template(data, options = nil) [](#method-i-create_story_template)
 ### Create story template.[¶](#method-i-create_story_template-label-Create+story+template.) [↑](#top)

Create a story template with data.

#### Parameters[¶](#method-i-create_story_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_story_template-label-Example) [↑](#top)

```
data= {title:'New Story Template',slug:'new-story-template-slug'}@data=@cxf\_user.create\_story\_template(data)
```
 ### get_story_template(id, options = nil) [](#method-i-get_story_template)
 ### Get story template.[¶](#method-i-get_story_template-label-Get+story+template.) [↑](#top)

Get a story template info.

#### Parameters[¶](#method-i-get_story_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story template id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_story_template-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_story\_template(2)
```

#### Second Example[¶](#method-i-get_story_template-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_story\_template(1,options)
```
 ### get_story_template_support_data(id) [](#method-i-get_story_template_support_data)
 ### Get support data of story template.[¶](#method-i-get_story_template_support_data-label-Get+support+data+of+story+template.) [↑](#top)

Get support data used in a story template.

#### Parameters[¶](#method-i-get_story_template_support_data-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story template id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_story_template_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_story\_template\_support\_data(1)
```
 ### get_story_templates(options = nil) [](#method-i-get_story_templates)
 ### Get story templates.[¶](#method-i-get_story_templates-label-Get+story+templates.) [↑](#top)

Get a collection of story templates.

#### Parameters[¶](#method-i-get_story_templates-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_story_templates-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_story\_templates
```

#### Second Example[¶](#method-i-get_story_templates-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_story\_templates(options)
```
 ### get_story_templates_support_data() [](#method-i-get_story_templates_support_data)
 ### Get support data of story templates.[¶](#method-i-get_story_templates_support_data-label-Get+support+data+of+story+templates.) [↑](#top)

Get support data used in story templates.

#### Example[¶](#method-i-get_story_templates_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_story\_templates\_support\_data
```
 ### update_story_template(id, data) [](#method-i-update_story_template)
 ### Update story template.[¶](#method-i-update_story_template-label-Update+story+template.) [↑](#top)

Update a story template info.

#### Parameters[¶](#method-i-update_story_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story template id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_story_template-label-Example) [↑](#top)

```
data= {title:'New Story Template Modified'}@data=@cxf\_user.update\_story\_template(3,data)
```
 