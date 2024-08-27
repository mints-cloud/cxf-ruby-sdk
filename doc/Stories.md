# module Stories [](#module-Stories) [](#top)
 ## Public Instance Methods
 ### create_story(data, options = nil) [](#method-i-create_story)
 ### Create story.[¶](#method-i-create_story-label-Create+story.) [↑](#top)

Create a story with data.

#### Parameters[¶](#method-i-create_story-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_story-label-Example) [↑](#top)

```
data= {user\_id:1,slug:"new-story",story\_template\_id:1}options= {fields:'id,slug'}@data=@cxf\_user.create\_story(data,options)
```
 ### delete_story(id) [](#method-i-delete_story)
 ### Delete story.[¶](#method-i-delete_story-label-Delete+story.) [↑](#top)

Delete a story.

#### Parameters[¶](#method-i-delete_story-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_story-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_story(6)
```
 ### duplicate_story(id, data) [](#method-i-duplicate_story)
 ### Duplicate story.[¶](#method-i-duplicate_story-label-Duplicate+story.) [↑](#top)

Duplicate a story.

#### Parameters[¶](#method-i-duplicate_story-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-duplicate_story-label-Example) [↑](#top)

```
data= {options:[] }@data=@cxf\_user.duplicate\_story(1,data.to\_json)
```
 ### get_stories(options = nil, use_post = true) [](#method-i-get_stories)
 ### Get stories.[¶](#method-i-get_stories-label-Get+stories.) [↑](#top)

Get a collection of stories.

#### Parameters[¶](#method-i-get_stories-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_stories-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_stories
```

#### Second Example[¶](#method-i-get_stories-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_stories(options)
```

#### Third Example[¶](#method-i-get_stories-label-Third+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_stories(options,true)
```
 ### get_story(id, options = nil) [](#method-i-get_story)
 ### Get story.[¶](#method-i-get_story-label-Get+story.) [↑](#top)

Get a story info.

#### Parameters[¶](#method-i-get_story-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_story-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_story(1)
```

#### Second Example[¶](#method-i-get_story-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_story(1,options)
```
 ### update_story(id, data, options = nil) [](#method-i-update_story)
 ### Update story.[¶](#method-i-update_story-label-Update+story.) [↑](#top)

Update a story info.

#### Parameters[¶](#method-i-update_story-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Story id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_story-label-Example) [↑](#top)

```
data= {user\_id:1,slug:'new-story'}@data=@cxf\_user.update\_story(5,data)
```
 