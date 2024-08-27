# module Calendars [](#module-Calendars) [](#top)
 ## Public Instance Methods
 ### create_calendar(data) [](#method-i-create_calendar)
 ### Create calendar.[¶](#method-i-create_calendar-label-Create+calendar.) [↑](#top)

Create a calendar with data.

#### Parameters[¶](#method-i-create_calendar-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_calendar-label-Example) [↑](#top)

```
data= {title:'New Calendar',object\_type:'contacts',object\_id:1}@data=@cxf\_user.create\_calendar(data)
```
 ### delete_calendar(id) [](#method-i-delete_calendar)
 ### Delete calendar.[¶](#method-i-delete_calendar-label-Delete+calendar.) [↑](#top)

Delete a calendar.

#### Parameters[¶](#method-i-delete_calendar-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Calendar id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_calendar-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_calendar(4)
```
 ### get_calendar(id, options = nil) [](#method-i-get_calendar)
 ### Get calendar.[¶](#method-i-get_calendar-label-Get+calendar.) [↑](#top)

Get a calendar info.

#### Parameters[¶](#method-i-get_calendar-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Calendar id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_calendar-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_calendar(1)
```

#### Second Example[¶](#method-i-get_calendar-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_calendar(1,options)
```
 ### get_calendars(options = nil) [](#method-i-get_calendars)
 ### Get calendars.[¶](#method-i-get_calendars-label-Get+calendars.) [↑](#top)

Get a collection of calendars.

#### Parameters[¶](#method-i-get_calendars-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_calendars-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_calendars
```

#### Second Example[¶](#method-i-get_calendars-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_calendars(options)
```
 ### update_calendar(id, data) [](#method-i-update_calendar)
 ### Update calendar.[¶](#method-i-update_calendar-label-Update+calendar.) [↑](#top)

Update a calendar info.

#### Parameters[¶](#method-i-update_calendar-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Calendar id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_calendar-label-Example) [↑](#top)

```
data= {title:'New Calendar Modified',object\_type:'contacts',object\_id:1}@data=@cxf\_user.update\_calendar(4,data)
```
 