# module Profile [](#module-Profile) [](#top)
 ## Public Instance Methods
 ### create_preferences(data) [](#method-i-create_preferences)
 ### Create preferences.[¶](#method-i-create_preferences-label-Create+preferences.) [↑](#top)

Create preferences of current user logged with data.

#### Parameters[¶](#method-i-create_preferences-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_preferences-label-Example) [↑](#top)

```
data= {time\_zone:'GMT-5'}@data=@cxf\_user.create\_preferences(data)
```
 ### delete_notifications(data) [](#method-i-delete_notifications)
 ### Delete notifications.[¶](#method-i-delete_notifications-label-Delete+notifications.) [↑](#top)

Delete notifications by data.

#### Parameters[¶](#method-i-delete_notifications-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_notifications-label-Example) [↑](#top)

```
data= {ids:['179083e3-3678-4cf6-b75e-5a8b9761245e']
}@data=@cxf\_user.delete\_notifications(data)
```
 ### get_notifications(options = nil) [](#method-i-get_notifications)
 ### Get notifications.[¶](#method-i-get_notifications-label-Get+notifications.) [↑](#top)

Get a collection of notifications.

#### Example[¶](#method-i-get_notifications-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_notifications
```
 ### get_preferences() [](#method-i-get_preferences)
 ### Get preferences.[¶](#method-i-get_preferences-label-Get+preferences.) [↑](#top)

Get preferences of current user logged.

#### Example[¶](#method-i-get_preferences-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_preferences
```
 ### get_preferences_by_setting_key(setting_key) [](#method-i-get_preferences_by_setting_key)
 ### Get preferences by setting key.[¶](#method-i-get_preferences_by_setting_key-label-Get+preferences+by+setting+key.) [↑](#top)

Get preferences using a setting key.

#### Parameters[¶](#method-i-get_preferences_by_setting_key-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>setting_key
</dt>
<dd>
<p>(String) – Setting key.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_preferences_by_setting_key-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_preferences\_by\_setting\_key('time\_zone')
```
 ### me(options = nil) [](#method-i-me)
 ### Me.[¶](#method-i-me-label-Me.) [↑](#top)

Get contact logged info.

#### Example[¶](#method-i-me-label-Example) [↑](#top)

```
@data=@cxf\_user.me
```
 ### read_notifications(data) [](#method-i-read_notifications)
 ### Read notifications.[¶](#method-i-read_notifications-label-Read+notifications.) [↑](#top)

Read notifications by data.

#### Parameters[¶](#method-i-read_notifications-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-read_notifications-label-Example) [↑](#top)

```
data= {ids:%w[406e9b74-4a9d-42f2-afc6-1587bad6147c a2d9f582-1bdb-4e55-8af0-cd1962eaa88c],read:true}@data=@cxf\_user.read\_notifications(data)
```
 