# module Content [](#module-Content) [](#top)
 ## Public Instance Methods
 ### create_keyword(data) [](#method-i-create_keyword)
 ### Create keyword.[¶](#method-i-create_keyword-label-Create+keyword.) [↑](#top)

Create a keyword with data.

#### Parameters[¶](#method-i-create_keyword-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_keyword-label-Example) [↑](#top)

```
data= {title:'New Keyword'}@data=@cxf\_user.create\_keyword(data.to\_json)
```
 ### create_stage(data) [](#method-i-create_stage)
 ### Create stage.[¶](#method-i-create_stage-label-Create+stage.) [↑](#top)

Create a stage with data.

#### Parameters[¶](#method-i-create_stage-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_stage-label-Example) [↑](#top)

```
config\_json= {count:1}event\_json= {rset:'DTSTART:20190214T000000Z',duration:1}data= {title:'New Stage',description:'New Stage Description',config\_json:config\_json.to\_json,event\_json:event\_json.to\_json}@data=@cxf\_user.create\_stage(data.to\_json)
```
 ### get_keyword(id) [](#method-i-get_keyword)
 ### Get keyword.[¶](#method-i-get_keyword-label-Get+keyword.) [↑](#top)

Get a keyword.

#### Parameters[¶](#method-i-get_keyword-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Keyword id.</p>
</dd>
</dl> ### get_keywords(options = nil) [](#method-i-get_keywords)
 ### Get keywords.[¶](#method-i-get_keywords-label-Get+keywords.) [↑](#top)

Get a collection of keywords.

#### Parameters[¶](#method-i-get_keywords-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_keywords-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_keywords
```

#### Second Example[¶](#method-i-get_keywords-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_keywords(options)
```
 ### get_public_images_url() [](#method-i-get_public_images_url)
 ### Get public images url.[¶](#method-i-get_public_images_url-label-Get+public+images+url.) [↑](#top)

Get public images url.

#### Example[¶](#method-i-get_public_images_url-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_public\_images\_url
```
 ### get_stage(id) [](#method-i-get_stage)
 ### Get stage.[¶](#method-i-get_stage-label-Get+stage.) [↑](#top)

Get a stage.

#### Parameters[¶](#method-i-get_stage-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Stage id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_stage-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_stage(1)
```
 ### get_stages(options = nil) [](#method-i-get_stages)
 ### Get stages.[¶](#method-i-get_stages-label-Get+stages.) [↑](#top)

Get a collection of stages.

#### Parameters[¶](#method-i-get_stages-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_stages-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_stages
```

#### Second Example[¶](#method-i-get_stages-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_stages(options)
```
 ### update_keyword(id, data) [](#method-i-update_keyword)
 ### Update keyword.[¶](#method-i-update_keyword-label-Update+keyword.) [↑](#top)

Update a keyword info.

#### Parameters[¶](#method-i-update_keyword-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Keyword id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_keyword-label-Example) [↑](#top)
 ### update_stage(id, data) [](#method-i-update_stage)
 ### Update stage.[¶](#method-i-update_stage-label-Update+stage.) [↑](#top)

Update a stage info.

#### Parameters[¶](#method-i-update_stage-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Stage id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_stage-label-Example) [↑](#top)

```
config\_json= {count:2}event\_json= {rset:'DTSTART:20190214T000000Z',duration:2}data= {stageProps:{title:'New Stage Modified',description:'New Stage Description Modified'},config\_json:config\_json.to\_json,event\_json:event\_json.to\_json}@data=@cxf\_user.update\_stage(3,data.to\_json)
```
 