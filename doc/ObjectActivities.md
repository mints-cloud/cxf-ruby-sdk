# module ObjectActivities [](#module-ObjectActivities) [](#top)
 ## Public Instance Methods
 ### create_object_activity(data) [](#method-i-create_object_activity)
 ### Create object activity.[¶](#method-i-create_object_activity-label-Create+object+activity.) [↑](#top)

Create an object activity with data.

#### Parameters[¶](#method-i-create_object_activity-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_object_activity-label-Example) [↑](#top)

```
data= {activity\_type:'note',object\_type:'contacts',object\_id:1}@data=@cxf\_user.create\_object\_activity(data)
```
 ### delete_object_activity(id) [](#method-i-delete_object_activity)
 ### Delete object activity.[¶](#method-i-delete_object_activity-label-Delete+object+activity.) [↑](#top)

Delete an object activity.

#### Parameters[¶](#method-i-delete_object_activity-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> activity id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_object_activity-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_object\_activity(573)
```
 ### get_object_activities(options = nil) [](#method-i-get_object_activities)
 ### Get object activities.[¶](#method-i-get_object_activities-label-Get+object+activities.) [↑](#top)

Get a collection of object activities.

#### Parameters[¶](#method-i-get_object_activities-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_object_activities-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_object\_activities
```

#### Second Example[¶](#method-i-get_object_activities-label-Second+Example) [↑](#top)

```
options= {fields:'object\_type'}@data=@cxf\_user.get\_object\_activities(options)
```
 ### get_object_activity(id, options = nil) [](#method-i-get_object_activity)
 ### Get object activity.[¶](#method-i-get_object_activity-label-Get+object+activity.) [↑](#top)

Get an object activity.

#### Parameters[¶](#method-i-get_object_activity-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> activity id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_object_activity-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_object\_activity(1)
```

#### Second Example[¶](#method-i-get_object_activity-label-Second+Example) [↑](#top)

```
options= {fields:'activity\_type'}@data=@cxf\_user.get\_object\_activity(1,options)
```
 ### update_object_activity(id, data) [](#method-i-update_object_activity)
 ### Update object activity.[¶](#method-i-update_object_activity-label-Update+object+activity.) [↑](#top)

Update an object activity info.

#### Parameters[¶](#method-i-update_object_activity-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – <a href="Object.html"><code>Object</code></a> activity id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_object_activity-label-Example) [↑](#top)

```
data= {activity\_type:'ticket'}@data=@cxf\_user.update\_object\_activity(573,data)
```
 