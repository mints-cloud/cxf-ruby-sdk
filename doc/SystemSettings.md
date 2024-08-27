# module SystemSettings [](#module-SystemSettings) [](#top)
 ## Public Instance Methods
 ### clear_tag(tag) [](#method-i-clear_tag)
 ### Clear tag.[¶](#method-i-clear_tag-label-Clear+tag.) [↑](#top)

Clear a tag info.

#### Parameters[¶](#method-i-clear_tag-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>tag
</dt>
<dd>
<p>(Integer) – Tag id.</p>
</dd>
</dl>
#### Example[¶](#method-i-clear_tag-label-Example) [↑](#top)

```
@data=@cxf\_user.clear\_tag(1)
```
 ### create_setting(data) [](#method-i-create_setting)
 ### Create setting.[¶](#method-i-create_setting-label-Create+setting.) [↑](#top)

Create a setting title with data.

#### Parameters[¶](#method-i-create_setting-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_setting-label-Example) [↑](#top)

```
data= {title:'new\_settings'}@data=@cxf\_user.create\_setting(data)
```
 ### get_settings() [](#method-i-get_settings)
 ### Get settings.[¶](#method-i-get_settings-label-Get+settings.) [↑](#top)

Get a collection of settings.

#### Example[¶](#method-i-get_settings-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_settings
```
 ### get_settings_by_keys(options) [](#method-i-get_settings_by_keys)
 ## System Settings[¶](#method-i-get_settings_by_keys-label-System+Settings) [↑](#top)

### Get settings by keys.[¶](#method-i-get_settings_by_keys-label-Get+settings+by+keys.) [↑](#top)

Get a collection of settings using keys.

#### Example[¶](#method-i-get_settings_by_keys-label-Example) [↑](#top)

```
options= {setting\_keys:'email\_transport\_provider,email\_template\_provider,email\_template\_default\_from\_address'}@data=@cxf\_user.get\_settings\_by\_keys(options)
```
 