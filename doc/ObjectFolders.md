# module ObjectFolders [](#module-ObjectFolders) [](#top)
 ## Public Instance Methods
 ### create_object_folder(data) [](#method-i-create_object_folder)
 ### Create object folder.[¶](#method-i-create_object_folder-label-Create+object+folder.) [↑](#top)

Create an object folder with data.

#### Parameters[¶](#method-i-create_object_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_object_folder-label-Example) [↑](#top)

```
data= {folder\_id:1,object\_id:1}@data=@cxf\_user.create\_object\_folder(data)
```
 ### delete_object_folder(id) [](#method-i-delete_object_folder)
 ### Delete object folder.[¶](#method-i-delete_object_folder-label-Delete+object+folder.) [↑](#top)

Delete an object folder.

#### Parameters[¶](#method-i-delete_object_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> folder id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_object_folder-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_object\_folder(2)
```
 ### get_object_folder(id, options = nil) [](#method-i-get_object_folder)
 ### Get object folder.[¶](#method-i-get_object_folder-label-Get+object+folder.) [↑](#top)

Get an object folder info.

#### Parameters[¶](#method-i-get_object_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> folders id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_object_folder-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_object\_folder(1)
```

#### Second Example[¶](#method-i-get_object_folder-label-Second+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_object\_folder(1,options)
```
 ### get_object_folders(options = nil) [](#method-i-get_object_folders)
 ### Get object folders.[¶](#method-i-get_object_folders-label-Get+object+folders.) [↑](#top)

Get a collection of object folders.

#### Parameters[¶](#method-i-get_object_folders-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_object_folders-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_object\_folders
```

#### Second Example[¶](#method-i-get_object_folders-label-Second+Example) [↑](#top)

```
options= {fields:"id"}@data=@cxf\_user.get\_object\_folders(options)
```
 ### update_object_folder(id, data) [](#method-i-update_object_folder)
 ### Update object folder.[¶](#method-i-update_object_folder-label-Update+object+folder.) [↑](#top)

Update an object folder info.

#### Parameters[¶](#method-i-update_object_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> folder id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_object_folder-label-Example) [↑](#top)

```
data= {folder\_id:2}@data=@cxf\_user.update\_object\_folder(1,data)
```
 