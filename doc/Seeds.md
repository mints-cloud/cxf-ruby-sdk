# module Seeds [](#module-Seeds) [](#top)
 ## Public Instance Methods
 ### apply_seeds(data, async: false) [](#method-i-apply_seeds)
 ## [`Seeds`](Seeds.html)[¶](#method-i-apply_seeds-label-Seeds) [↑](#top)

### Apply seeds.[¶](#method-i-apply_seeds-label-Apply+seeds.) [↑](#top)

Apply seeds.

#### Example[¶](#method-i-apply_seeds-label-Example) [↑](#top)
 ### get_seed_process(id, options = nil) [](#method-i-get_seed_process)
 ### Get seed process.[¶](#method-i-get_seed_process-label-Get+seed+process.) [↑](#top)

Get a seed process info.

#### Parameters[¶](#method-i-get_seed_process-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Seed process id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_seed_process-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_seed\_process(1)
```

#### Second Example[¶](#method-i-get_seed_process-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_seed\_process(1,options)
```
 ### get_seed_processes(options = nil) [](#method-i-get_seed_processes)
 ### Get seed processes.[¶](#method-i-get_seed_processes-label-Get+seed+processes.) [↑](#top)

Get a collection of seed processes.

#### Parameters[¶](#method-i-get_seed_processes-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_seed_processes-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_seed\_processes
```

#### Second Example[¶](#method-i-get_seed_processes-label-Second+Example) [↑](#top)

```
options= {fields:'id'}@data=@cxf\_user.get\_seed\_processes(options)
```
 