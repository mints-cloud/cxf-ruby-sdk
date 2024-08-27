# module PrintVersions [](#module-PrintVersions) [](#top)
 ## Public Instance Methods
 ### create_print_version(data, options = nil) [](#method-i-create_print_version)
 ### Create print version.[¶](#method-i-create_print_version-label-Create+print+version.) [↑](#top)

Create a print version with data.

#### Parameters[¶](#method-i-create_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_print_version-label-Example) [↑](#top)

```
data= {title:'New print',slug:'new-print',social\_metadata:'social metadata'}@data=@cxf\_user.create\_print\_version(data)
```
 ### delete_print_version(id) [](#method-i-delete_print_version)
 ### Delete print version.[¶](#method-i-delete_print_version-label-Delete+print+version.) [↑](#top)

Delete a print version.

#### Parameters[¶](#method-i-delete_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – print version id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_print_version-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_print\_version(6)
```
 ### duplicate_print_version(id, data) [](#method-i-duplicate_print_version)
 ### Duplicate print version.[¶](#method-i-duplicate_print_version-label-Duplicate+print+version.) [↑](#top)

Duplicate a print version.

#### Parameters[¶](#method-i-duplicate_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – print version id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-duplicate_print_version-label-Example) [↑](#top)

```
data= {options:[] }@data=@cxf\_user.duplicate\_print\_version(1,data.to\_json)
```
 ### get_print_version(id, options = nil) [](#method-i-get_print_version)
 ### Get print version.[¶](#method-i-get_print_version-label-Get+print+version.) [↑](#top)

Get a print version info.

#### Parameters[¶](#method-i-get_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – print version id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_print_version-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_print\_version(1)
```

#### Second Example[¶](#method-i-get_print_version-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_print\_version(1,options)
```
 ### get_print_versions(options = nil, use_post = true) [](#method-i-get_print_versions)
 ### Get print versions.[¶](#method-i-get_print_versions-label-Get+print+versions.) [↑](#top)

Get a collection of print versions.

#### Parameters[¶](#method-i-get_print_versions-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_print_versions-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_print\_versions
```

#### Second Example[¶](#method-i-get_print_versions-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_print\_versions(options)
```

#### Third Example[¶](#method-i-get_print_versions-label-Third+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_print\_versions(options,true)
```
 ### publish_print_version(id, data) [](#method-i-publish_print_version)
 ### Publish print version.[¶](#method-i-publish_print_version-label-Publish+print+version.) [↑](#top)

Publish a print version.

#### Parameters[¶](#method-i-publish_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – print version id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-publish_print_version-label-Example) [↑](#top)

```
data= {title:'New print Modified',slug:'new-print'}@data=@cxf\_user.publish\_print\_version(1,data.to\_json)
```
 ### update_print_version(id, data, options = nil) [](#method-i-update_print_version)
 ### Update print version.[¶](#method-i-update_print_version-label-Update+print+version.) [↑](#top)

Update a print version info.

#### Parameters[¶](#method-i-update_print_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – print version id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_print_version-label-Example) [↑](#top)

```
data= {title:'New print Modified',slug:'new-print'}@data=@cxf\_user.update\_print\_version(5,data)
```
 