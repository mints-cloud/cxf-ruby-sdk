# module Instances [](#module-Instances) [](#top)
 ## Public Instance Methods
 ### create_instance(data, options = nil) [](#method-i-create_instance)
 ### Create instance.[¶](#method-i-create_instance-label-Create+instance.) [↑](#top)

Create a instance with data.

#### Parameters[¶](#method-i-create_instance-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_instance-label-Example) [↑](#top)

```
data= {user\_id:1,slug:"new-instance",instance\_template\_id:1}options= {fields:'id,slug'}@data=@cxf\_user.create\_instance(data,options)
```
 ### create_instance_version(id, data, options = nil) [](#method-i-create_instance_version)
 ### Create instance version.[¶](#method-i-create_instance_version-label-Create+instance+version.) [↑](#top)

Create a instance version with data.

#### Parameters[¶](#method-i-create_instance_version-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – instance id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl> ### delete_instance(id) [](#method-i-delete_instance)
 ### Delete instance.[¶](#method-i-delete_instance-label-Delete+instance.) [↑](#top)

Delete a instance.

#### Parameters[¶](#method-i-delete_instance-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – instance id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_instance-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_instance(6)
```
 ### duplicate_instance(id, data) [](#method-i-duplicate_instance)
 ### Duplicate instance.[¶](#method-i-duplicate_instance-label-Duplicate+instance.) [↑](#top)

Duplicate a instance.

#### Parameters[¶](#method-i-duplicate_instance-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – instance id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-duplicate_instance-label-Example) [↑](#top)

```
data= {options:[] }@data=@cxf\_user.duplicate\_instance(1,data.to\_json)
```
 ### get_instance(id, options = nil) [](#method-i-get_instance)
 ### Get instance.[¶](#method-i-get_instance-label-Get+instance.) [↑](#top)

Get a instance info.

#### Parameters[¶](#method-i-get_instance-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – instance id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_instance-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_instance(1)
```

#### Second Example[¶](#method-i-get_instance-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_instance(1,options)
```
 ### get_instances(options = nil, use_post = true) [](#method-i-get_instances)
 ### Get instances.[¶](#method-i-get_instances-label-Get+instances.) [↑](#top)

Get a collection of instances.

#### Parameters[¶](#method-i-get_instances-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_instances-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_instances
```

#### Second Example[¶](#method-i-get_instances-label-Second+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_instances(options)
```

#### Third Example[¶](#method-i-get_instances-label-Third+Example) [↑](#top)

```
options= {fields:'id, slug'}@data=@cxf\_user.get\_instances(options,true)
```
 ### update_instance(id, data, options = nil) [](#method-i-update_instance)
 ### Update instance.[¶](#method-i-update_instance-label-Update+instance.) [↑](#top)

Update a instance info.

#### Parameters[¶](#method-i-update_instance-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – instance id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_instance-label-Example) [↑](#top)

```
data= {user\_id:1,slug:'new-instance'}@data=@cxf\_user.update\_instance(5,data)
```
 