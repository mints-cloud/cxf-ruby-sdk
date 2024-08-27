# module Marketing [](#module-Marketing) [](#top)
 ## Public Instance Methods
 ### create_automation(data) [](#method-i-create_automation)
 ### Create automation.[¶](#method-i-create_automation-label-Create+automation.) [↑](#top)

Create an automation with data.

#### Parameters[¶](#method-i-create_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_automation-label-Example) [↑](#top)

```
data= {title:'New Automation'}@data=@cxf\_user.create\_automation(data)
```
 ### delete_automation(id) [](#method-i-delete_automation)
 ### Delete automation.[¶](#method-i-delete_automation-label-Delete+automation.) [↑](#top)

Delete an automation.

#### Parameters[¶](#method-i-delete_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_automation-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_automation(5)
```
 ### duplicate_automation(id, data) [](#method-i-duplicate_automation)
 ### Duplicate automation.[¶](#method-i-duplicate_automation-label-Duplicate+automation.) [↑](#top)

Duplicate an automation.

#### Parameters[¶](#method-i-duplicate_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-duplicate_automation-label-Example) [↑](#top)

```
data= {options:[]
}@data=@cxf\_user.duplicate\_automation(1,data.to\_json)
```
 ### get_automation(id, options = nil) [](#method-i-get_automation)
 ### Get automation.[¶](#method-i-get_automation-label-Get+automation.) [↑](#top)

Get an automation info.

#### Parameters[¶](#method-i-get_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_automation-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_automation(1)
```

#### Second Example[¶](#method-i-get_automation-label-Second+Example) [↑](#top)

```
options= {fields:'title, id'}@data=@cxf\_user.get\_automation(1,options)
```
 ### get_automation_executions(id) [](#method-i-get_automation_executions)
 ### Get automation executions.[¶](#method-i-get_automation_executions-label-Get+automation+executions.) [↑](#top)

Get executions of an automation.

#### Parameters[¶](#method-i-get_automation_executions-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_automation_executions-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_automation\_executions(1)
```
 ### get_automations(options = nil) [](#method-i-get_automations)
 ### Get automations.[¶](#method-i-get_automations-label-Get+automations.) [↑](#top)

Get a collection of automations.

#### Parameters[¶](#method-i-get_automations-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_automations-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_automations
```

#### Second Example[¶](#method-i-get_automations-label-Second+Example) [↑](#top)

```
options= {fields:'title'}@data=@cxf\_user.get\_automations(options)
```
 ### reset_automation(id) [](#method-i-reset_automation)
 ### Reset automation.[¶](#method-i-reset_automation-label-Reset+automation.) [↑](#top)

Reset an automation.

#### Parameters[¶](#method-i-reset_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-reset_automation-label-Example) [↑](#top)

```
@data=@cxf\_user.reset\_automation(1)
```
 ### update_automation(id, data) [](#method-i-update_automation)
 ### Update automation.[¶](#method-i-update_automation-label-Update+automation.) [↑](#top)

Update an automation info.

#### Parameters[¶](#method-i-update_automation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Automation id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl> 