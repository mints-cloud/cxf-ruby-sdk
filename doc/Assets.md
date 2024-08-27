# module Assets [](#module-Assets) [](#top)
 ## Public Instance Methods
 ### create_asset(data) [](#method-i-create_asset)
 ### Create asset.[¶](#method-i-create_asset-label-Create+asset.) [↑](#top)

Create a asset with data.

#### Parameters[¶](#method-i-create_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_asset-label-Example) [↑](#top)

```
data= {title:'New Asset',slug:'new-asset',
}@data=@cxf\_user.create\_asset(data)
```
 ### create_asset_size(data) [](#method-i-create_asset_size)
 ### Create asset size.[¶](#method-i-create_asset_size-label-Create+asset+size.) [↑](#top)

Create an asset size by data.

#### Parameters[¶](#method-i-create_asset_size-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_asset_size-label-Example) [↑](#top)

```
data= {aspectRadio:'custom',assetId:23,drawPosData:{pos:{sx:100,sy:100,swidth:200,sheight:200}
 },width:100,height:100,slug:'fuji\_size\_slug',title:'fuji\_size',variationId:'original'}@data=@cxf\_user.create\_asset\_size(data.to\_json)
```
 ### delete_asset(id) [](#method-i-delete_asset)
 ### Delete asset.[¶](#method-i-delete_asset-label-Delete+asset.) [↑](#top)

Delete a asset.

#### Parameters[¶](#method-i-delete_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Asset id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_asset-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_asset(6)
```
 ### download_asset(id) [](#method-i-download_asset)
 ### Download asset.[¶](#method-i-download_asset-label-Download+asset.) [↑](#top)

Get information of an asset.

#### Parameters[¶](#method-i-download_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Asset id.</p>
</dd>
</dl>
#### Example[¶](#method-i-download_asset-label-Example) [↑](#top)

```
@data=@cxf\_user.download\_asset(2)
```
 ### generate_asset_variation(data) [](#method-i-generate_asset_variation)
 ### Generate asset variation.[¶](#method-i-generate_asset_variation-label-Generate+asset+variation.) [↑](#top)

Create an asset variation of an existing asset.

#### Parameters[¶](#method-i-generate_asset_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl> ### get_asset(id, options = nil) [](#method-i-get_asset)
 ### Get asset.[¶](#method-i-get_asset-label-Get+asset.) [↑](#top)

Get a asset info.

#### Parameters[¶](#method-i-get_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Asset id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_asset-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_asset(1)
```

#### Second Example[¶](#method-i-get_asset-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_asset(1,options)
```
 ### get_asset_doc_types() [](#method-i-get_asset_doc_types)
 ### Get asset doc types.[¶](#method-i-get_asset_doc_types-label-Get+asset+doc+types.) [↑](#top)

Get doc types of assets.

 ### get_asset_info(options) [](#method-i-get_asset_info)
 ### Get asset info.[¶](#method-i-get_asset_info-label-Get+asset+info.) [↑](#top)

Get info of an asset. TODO: Research if is an asset or many assets

#### Parameters[¶](#method-i-get_asset_info-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl> ### get_asset_link_info(data) [](#method-i-get_asset_link_info)
 ### Get asset link info.[¶](#method-i-get_asset_link_info-label-Get+asset+link+info.) [↑](#top)

Get information of an asset by url.

#### Parameters[¶](#method-i-get_asset_link_info-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_asset_link_info-label-Example) [↑](#top)

```
data= {link:'https://www.example.com/img/img.jpg'}@data=@cxf\_user.get\_asset\_link\_info(data.to\_json)
```
 ### get_asset_public_route() [](#method-i-get_asset_public_route)
 ### Get asset public route.[¶](#method-i-get_asset_public_route-label-Get+asset+public+route.) [↑](#top)

Get public route of assets.

 ### get_asset_size(id) [](#method-i-get_asset_size)
 ### Get asset sizes.[¶](#method-i-get_asset_size-label-Get+asset+sizes.) [↑](#top)

Get sizes of an asset.

#### Parameters[¶](#method-i-get_asset_size-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) Asset id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_asset_size-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_asset\_sizes(2)
```
 ### get_asset_sizes(options) [](#method-i-get_asset_sizes)
 ## Sizes[¶](#method-i-get_asset_sizes-label-Sizes) [↑](#top)

### Get asset sizes.[¶](#method-i-get_asset_sizes-label-Get+asset+sizes.) [↑](#top)

Get a collection of sizes of an asset.

#### Parameters[¶](#method-i-get_asset_sizes-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>

FIXME: Double get asset sizes method!

 ### get_asset_thumbnails(id) [](#method-i-get_asset_thumbnails)
 ### get_asset_usage(options) [](#method-i-get_asset_usage)
 ### Get asset usage.[¶](#method-i-get_asset_usage-label-Get+asset+usage.) [↑](#top)

Get usage of an asset.

#### Parameters[¶](#method-i-get_asset_usage-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl> ### get_asset_variation(id) [](#method-i-get_asset_variation)
 ## Variations[¶](#method-i-get_asset_variation-label-Variations) [↑](#top)

### Get asset variation.[¶](#method-i-get_asset_variation-label-Get+asset+variation.) [↑](#top)

Get variation of an asset.

#### Parameters[¶](#method-i-get_asset_variation-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) Asset variation id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_asset_variation-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_asset\_sizes(2)
```

TODO: Research if is an asset id or an variation id

 ### get_assets(options = nil, use_post = true) [](#method-i-get_assets)
 ## [`Assets`](Assets.html)[¶](#method-i-get_assets-label-Assets) [↑](#top)

### Get assets.[¶](#method-i-get_assets-label-Get+assets.) [↑](#top)

Get a collection of assets.

#### Parameters[¶](#method-i-get_assets-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_assets-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_assets
```

#### Second Example[¶](#method-i-get_assets-label-Second+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_assets(options)
```

#### Third Example[¶](#method-i-get_assets-label-Third+Example) [↑](#top)

```
options= {fields:'id, title'}@data=@cxf\_user.get\_assets(options,true)
```
 ### update_asset(id, data) [](#method-i-update_asset)
 ### Update asset.[¶](#method-i-update_asset-label-Update+asset.) [↑](#top)

Update a asset info.

#### Parameters[¶](#method-i-update_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Asset id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_asset-label-Example) [↑](#top)

```
data= {title:'New Asset Modified',slug:'new-asset'}@data=@cxf\_user.update\_asset(5,data)
```
 ### upload_asset(data) [](#method-i-upload_asset)
 ### Upload asset.[¶](#method-i-upload_asset-label-Upload+asset.) [↑](#top)

Upload an asset. It can be images, documents and videos.

#### Parameters[¶](#method-i-upload_asset-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### First Example (with files)[¶](#method-i-upload_asset-label-First+Example+-28with+files-29) [↑](#top)

#### Second Example (with urls)[¶](#method-i-upload_asset-label-Second+Example+-28with+urls-29) [↑](#top)

```
data = {
 title: 'asset title',
 description: 'asset description',
 link: 'https://link/example',
 url-type: 'url-image',
 slug: 'slug',
 type: 'link',
 father_id: 1
}
@data = @cxf_user.upload_asset(data.to_json)
```

#### Third Example (with video)[¶](#method-i-upload_asset-label-Third+Example+-28with+video-29) [↑](#top)

```
data= {title:'Video Title',fileType:'video/mp4',type:'video',slug:'video-slug',status:'not-uploaded',ext:'mp4',size:29605264,access\_token:'access\_token',name:'Video Title',videoData:{id:80313307,name:'Video Title',type:'video',created:'2021-10-19T19:18:17+00:00',updated:'2021-10-19T19:18:17+00:00',duration:191.936133,hashed\_id:'hashed\_id',progress:0.14285714285714285,status:'queued',thumbnail:{url:'https://www.example.com/img/img.jpg',width:200,height:120},account\_id:1234567}
}@data=@cxf\_user.upload\_asset(data.to\_json)
```
 