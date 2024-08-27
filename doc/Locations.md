# module Locations [](#module-Locations) [](#top)
 ## Public Instance Methods
 ### create_location(data, options = nil) [](#method-i-create_location)
 ### Create location.[¶](#method-i-create_location-label-Create+location.) [↑](#top)

Create a location with data.

#### Parameters[¶](#method-i-create_location-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_location-label-Example) [↑](#top)

```
data= {title:'New Location',location\_template\_id:1}@data=@cxf\_user.create\_location(data)
```
 ### create_location_template(data) [](#method-i-create_location_template)
 ### Create location template.[¶](#method-i-create_location_template-label-Create+location+template.) [↑](#top)

Create a location template with data.

#### Parameters[¶](#method-i-create_location_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_location_template-label-Example) [↑](#top)

```
data= {title:'New Location Template',slug:'new-location-template'}@data=@cxf\_user.create\_location\_template(data)
```
 ### delete_location(id) [](#method-i-delete_location)
 ### Delete location.[¶](#method-i-delete_location-label-Delete+location.) [↑](#top)

Delete a location.

#### Parameters[¶](#method-i-delete_location-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_location-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_location(5)
```
 ### get_location(id, options = nil) [](#method-i-get_location)
 ### Get location.[¶](#method-i-get_location-label-Get+location.) [↑](#top)

Get a location info.

#### Parameters[¶](#method-i-get_location-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_location-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_location(2)
```
 ### get_location_template(id, options = nil) [](#method-i-get_location_template)
 ### Get location template.[¶](#method-i-get_location_template-label-Get+location+template.) [↑](#top)

Get a location template info.

#### Parameters[¶](#method-i-get_location_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location template id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_location_template-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_location\_template(1)
```

#### Second Example[¶](#method-i-get_location_template-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_location\_template(1,options)
```
 ### get_location_template_support_data(id) [](#method-i-get_location_template_support_data)
 ### Get location template support data.[¶](#method-i-get_location_template_support_data-label-Get+location+template+support+data.) [↑](#top)

Get support data used in a location template.

#### Parameters[¶](#method-i-get_location_template_support_data-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location template id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_location_template_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_location\_template\_support\_data(1)
```
 ### get_location_templates(options = nil) [](#method-i-get_location_templates)
 ### Get location templates.[¶](#method-i-get_location_templates-label-Get+location+templates.) [↑](#top)

Get a collection of location templates.

#### Parameters[¶](#method-i-get_location_templates-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_location_templates-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_location\_templates
```

#### Second Example[¶](#method-i-get_location_templates-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_location\_templates(options)
```
 ### get_location_templates_support_data() [](#method-i-get_location_templates_support_data)
 ### Get location templates support data.[¶](#method-i-get_location_templates_support_data-label-Get+location+templates+support+data.) [↑](#top)

Get support data used in location templates.

#### Example[¶](#method-i-get_location_templates_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_location\_templates\_support\_data
```
 ### get_locations(options = nil, use_post = true) [](#method-i-get_locations)
 ### Get locations.[¶](#method-i-get_locations-label-Get+locations.) [↑](#top)

Get a collection of locations.

#### Parameters[¶](#method-i-get_locations-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>use_post
</dt>
<dd>
<p>(Boolean) – Variable to determine if the request is by ‘post’ or ‘get’ functions.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_locations-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_locations
```

#### Second Example[¶](#method-i-get_locations-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_locations(options)
```
 ### update_location(id, data, options = nil) [](#method-i-update_location)
 ### Update location.[¶](#method-i-update_location-label-Update+location.) [↑](#top)

Update a location info.

#### Parameters[¶](#method-i-update_location-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_location-label-Example) [↑](#top)

```
data= {title:'New Location Modified'}@data=@cxf\_user.update\_location(5,data)
```
 ### update_location_template(id, data) [](#method-i-update_location_template)
 ### Update location template.[¶](#method-i-update_location_template-label-Update+location+template.) [↑](#top)

Update a location template info.

#### Parameters[¶](#method-i-update_location_template-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Location template id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_location_template-label-Example) [↑](#top)

```
data= {title:'New Location Template Modified'}@data=@cxf\_user.update\_location\_template(3,data)
```
 