# module Relationships [](#module-Relationships) [](#top)
 ## Public Instance Methods
 ### attach_relationship(data) [](#method-i-attach_relationship)
 ### Attach relationship.[¶](#method-i-attach_relationship-label-Attach+relationship.) [↑](#top)

Attach a relationship.

#### Parameters[¶](#method-i-attach_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-attach_relationship-label-Example) [↑](#top)
 ### create_relationship(data) [](#method-i-create_relationship)
 ### Create relationship.[¶](#method-i-create_relationship-label-Create+relationship.) [↑](#top)

Create a relationship with data.

#### Parameters[¶](#method-i-create_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_relationship-label-Example) [↑](#top)

```
data= {alias\_1:'eventsCopy',alias\_2:'ticketsCopy',object\_model\_1:'Story',object\_model\_2:'Product'}@data=@cxf\_user.create\_relationship(data)
```
 ### delete_relationship(id) [](#method-i-delete_relationship)
 ### Delete relationship.[¶](#method-i-delete_relationship-label-Delete+relationship.) [↑](#top)

Delete a relationship.

#### Parameters[¶](#method-i-delete_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Relationship id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_relationship-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_relationship(5)
```
 ### detach_relationship(data) [](#method-i-detach_relationship)
 ### Detach relationship.[¶](#method-i-detach_relationship-label-Detach+relationship.) [↑](#top)

Detach a relationship.

#### Parameters[¶](#method-i-detach_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-detach_relationship-label-Example) [↑](#top)
 ### get_relationship(id, options = nil) [](#method-i-get_relationship)
 ### Get relationship.[¶](#method-i-get_relationship-label-Get+relationship.) [↑](#top)

Get a relationship info.

#### Parameters[¶](#method-i-get_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Relationship id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_relationship-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_relationship(1)
```

#### Second Example[¶](#method-i-get_relationship-label-Second+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_relationship(1,options)
```
 ### get_relationships(options = nil) [](#method-i-get_relationships)
 ### Get relationships.[¶](#method-i-get_relationships-label-Get+relationships.) [↑](#top)

Get a collection of relationships.

#### Parameters[¶](#method-i-get_relationships-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_relationships-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_relationships
```

#### Second Example[¶](#method-i-get_relationships-label-Second+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_relationships(options)
```
 ### get_relationships_available_for(options) [](#method-i-get_relationships_available_for)
 ## [`Relationships`](Relationships.html)[¶](#method-i-get_relationships_available_for-label-Relationships) [↑](#top)

### Get relationships available for.[¶](#method-i-get_relationships_available_for-label-Get+relationships+available+for.) [↑](#top)

Get relationships available.

#### Parameters[¶](#method-i-get_relationships_available_for-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_relationships_available_for-label-Example) [↑](#top)

```
options= {objectType:'contacts'}@data=@cxf\_user.get\_relationships\_available\_for(options)
```
 ### relationship_has_objects(id) [](#method-i-relationship_has_objects)
 ### Relationship has objects.[¶](#method-i-relationship_has_objects-label-Relationship+has+objects.) [↑](#top)

Get relationships that has objects.

#### Parameters[¶](#method-i-relationship_has_objects-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Relationship id.</p>
</dd>
</dl>
#### Example[¶](#method-i-relationship_has_objects-label-Example) [↑](#top)

```
@data=@cxf\_user.relationship\_has\_objects(1)
```
 ### update_relationship(id, data) [](#method-i-update_relationship)
 ### Update relationship.[¶](#method-i-update_relationship-label-Update+relationship.) [↑](#top)

Update a relationship info.

#### Parameters[¶](#method-i-update_relationship-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Relationship id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_relationship-label-Example) [↑](#top)

```
data= {alias\_1:'eventsCopyModified',alias\_2:'ticketsCopyModified',object\_model\_1:'Story',object\_model\_2:'Product'}@data=@cxf\_user.update\_relationship(5,data)
```
 