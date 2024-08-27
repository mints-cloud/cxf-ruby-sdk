# module Blocks [](#module-Blocks) [](#top)
 ## Public Instance Methods
 ### create_block(data, options = nil) [](#method-i-create_block)
 ### Create block.[¶](#method-i-create_block-label-Create+block.) [↑](#top)

Create a block with data.

#### Parameters[¶](#method-i-create_block-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_block-label-Example) [↑](#top)

```
data= {user\_id:1,slug:"new-block",block\_template\_id:1}options= {fields:'id,slug'}@data=@cxf\_user.create\_block(data,options)
```
 ### delete_block(id) [](#method-i-delete_block)
 ### Delete block.[¶](#method-i-delete_block-label-Delete+block.) [↑](#top)

Delete a block.

#### Parameters[¶](#method-i-delete_block-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_block-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_block(6)
```
 ### duplicate_block(id, data) [](#method-i-duplicate_block)
 ### Duplicate block.[¶](#method-i-duplicate_block-label-Duplicate+block.) [↑](#top)

Duplicate a block.

#### Parameters[¶](#method-i-duplicate_block-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-duplicate_block-label-Example) [↑](#top)

```
data= {options:[] }@data=@cxf\_user.duplicate\_block(1,data.to\_json)
```
 ### get_block(id, options = nil) [](#method-i-get_block)
 ### Get block.[¶](#method-i-get_block-label-Get+block.) [↑](#top)

Get a block info.

#### Parameters[¶](#method-i-get_block-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_block-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_block(1)
```

#### Second Example[¶](#method-i-get_block-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_block(1,options)
```
 ### get_blocks(options = nil, use_post = true) [](#method-i-get_blocks)
 ### Get blocks.[¶](#method-i-get_blocks-label-Get+blocks.) [↑](#top)

Get a collection of blocks.

#### Parameters[¶](#method-i-get_blocks-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_blocks-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_blocks
```

#### Second Example[¶](#method-i-get_blocks-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_blocks(options)
```

#### Third Example[¶](#method-i-get_blocks-label-Third+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_blocks(options,true)
```
 ### update_block(id, data, options = nil) [](#method-i-update_block)
 ### Update block.[¶](#method-i-update_block-label-Update+block.) [↑](#top)

Update a block info.

#### Parameters[¶](#method-i-update_block-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – block id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_block-label-Example) [↑](#top)

```
data= {user\_id:1,slug:'new-block'}@data=@cxf\_user.update\_block(5,data)
```
 