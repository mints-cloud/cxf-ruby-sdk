# module UserFolders [](#module-UserFolders) [](#top)
 ## Public Instance Methods
 ### create_user_folder(data) [](#method-i-create_user_folder)
 ### Create user folder.[¶](#method-i-create_user_folder-label-Create+user+folder.) [↑](#top)

Create an user folder with data.

#### Parameters[¶](#method-i-create_user_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_user_folder-label-Example) [↑](#top)

```
data= {folder:'new-user-folder',object\_type:'contacts'}@data=@cxf\_user.create\_user\_folder(data)
```
 ### delete_user_folder(id) [](#method-i-delete_user_folder)
 ### Delete user folder.[¶](#method-i-delete_user_folder-label-Delete+user+folder.) [↑](#top)

Delete an user folder.

#### Parameters[¶](#method-i-delete_user_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – User folder id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_user_folder-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_user\_folder(289)
```
 ### get_user_folder(id, options = nil) [](#method-i-get_user_folder)
 ### Get user folder.[¶](#method-i-get_user_folder-label-Get+user+folder.) [↑](#top)

Get an user folder info.

#### Parameters[¶](#method-i-get_user_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – User folder id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_user_folder-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_user\_folder(1)
```

#### Second Example[¶](#method-i-get_user_folder-label-Second+Example) [↑](#top)

```
options= {fields:'user\_id, folder'}@data=@cxf\_user.get\_user\_folder(1,options)
```
 ### get_user_folders(options = nil) [](#method-i-get_user_folders)
 ### Get user folders.[¶](#method-i-get_user_folders-label-Get+user+folders.) [↑](#top)

Get a collection of user folders.

#### Parameters[¶](#method-i-get_user_folders-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_user_folders-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_user\_folders
```

#### Second Example[¶](#method-i-get_user_folders-label-Second+Example) [↑](#top)

```
options= {fields:'folder'}@data=@cxf\_user.get\_user\_folders(options)
```
 ### update_user_folder(id, data) [](#method-i-update_user_folder)
 ### Update user folder.[¶](#method-i-update_user_folder-label-Update+user+folder.) [↑](#top)

Update an user folder info.

#### Parameters[¶](#method-i-update_user_folder-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – User folder id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_user_folder-label-Example) [↑](#top)

```
data= {folder:'new-user-folder-modifier',object\_type:'contact'}@data=@cxf\_user.update\_user\_folder(289,data)
```
 