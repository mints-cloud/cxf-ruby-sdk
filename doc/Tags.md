# module Tags [](#module-Tags) [](#top)
 ## Public Instance Methods
 ### create_tag(data) [](#method-i-create_tag)
 ### Create tag.[¶](#method-i-create_tag-label-Create+tag.) [↑](#top)

Create a tag with data.

#### Parameters[¶](#method-i-create_tag-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_tag-label-Example) [↑](#top)

```
data= {tag:'new-tag',is\_visible:true}@data=@cxf\_user.create\_tag(data)
```
 ### get_tag(id) [](#method-i-get_tag)
 ### Get tag.[¶](#method-i-get_tag-label-Get+tag.) [↑](#top)

Get a tag info.

#### Parameters[¶](#method-i-get_tag-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Tag id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_tag-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_tag(1)
```
 ### get_tags() [](#method-i-get_tags)
 ## [`Tags`](Tags.html)[¶](#method-i-get_tags-label-Tags) [↑](#top)

### Get tags.[¶](#method-i-get_tags-label-Get+tags.) [↑](#top)

Get a collection of tags.

#### Example[¶](#method-i-get_tags-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_tags
```
 ### update_tag(id, data) [](#method-i-update_tag)
 ### Update tag.[¶](#method-i-update_tag-label-Update+tag.) [↑](#top)

Update a tag info.

#### Parameters[¶](#method-i-update_tag-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Tag id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_tag-label-Example) [↑](#top)

```
data= {tag:'new-tag',slug:'new-tag',is\_visible:false}@data=@cxf\_user.update\_tag(54,data)
```
 