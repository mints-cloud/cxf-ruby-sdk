# module VariantOptions [](#module-VariantOptions) [](#top)
 ## Public Instance Methods
 ### create_variant_option(data) [](#method-i-create_variant_option)
 ### Create variant option.[¶](#method-i-create_variant_option-label-Create+variant+option.) [↑](#top)

Create a variant option with data.

#### Parameters[¶](#method-i-create_variant_option-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_variant_option-label-Example) [↑](#top)

```
data= {title:'New Variant Option'}@data=@cxf\_user.create\_variant\_option(data)
```
 ### get_variant_option(id, options = nil) [](#method-i-get_variant_option)
 ### Get variant option.[¶](#method-i-get_variant_option-label-Get+variant+option.) [↑](#top)

Get a variant options info.

#### Parameters[¶](#method-i-get_variant_option-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Variant option id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_variant_option-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_variant\_option(1)
```

#### Second Example[¶](#method-i-get_variant_option-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_variant\_option(1,options)
```
 ### get_variant_options(options = nil) [](#method-i-get_variant_options)
 ### Get variant options.[¶](#method-i-get_variant_options-label-Get+variant+options.) [↑](#top)

Get a collection of variant options.

#### Parameters[¶](#method-i-get_variant_options-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_variant_options-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_variant\_options
```

#### Second Example[¶](#method-i-get_variant_options-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_variant\_options(options)
```
 ### update_variant_option(id, data) [](#method-i-update_variant_option)
 ### Update variant option.[¶](#method-i-update_variant_option-label-Update+variant+option.) [↑](#top)

Update a variant option info.

#### Parameters[¶](#method-i-update_variant_option-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Variant option id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_variant_option-label-Example) [↑](#top)

```
data= {title:'New Variant Option Modified'}@data=@cxf\_user.update\_variant\_option(6,data)
```
 