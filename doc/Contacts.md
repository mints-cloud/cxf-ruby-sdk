# module Contacts [](#module-Contacts) [](#top)
 ## Public Instance Methods
 ### change_password_no_auth(data) [](#method-i-change_password_no_auth)
 ## Contact Auth[¶](#method-i-change_password_no_auth-label-Contact+Auth) [↑](#top)

### Change password no auth.[¶](#method-i-change_password_no_auth-label-Change+password+no+auth.) [↑](#top)

Change password to an email without auth.

#### Parameters[¶](#method-i-change_password_no_auth-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-change_password_no_auth-label-Example) [↑](#top)

```
data= {password:'12345678',email:'email@example.com'}@data=@cxf\_user.change\_password\_no\_auth(data)
```
 ### create_contact(data, options = nil) [](#method-i-create_contact)
 ### Create contact.[¶](#method-i-create_contact-label-Create+contact.) [↑](#top)

Create a contact with data.

#### Parameters[¶](#method-i-create_contact-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_contact-label-Example) [↑](#top)

```
data= {email:'email@example.com',given\_name:'Given Name',last\_name:'Last Name',password:'123456'}@data=@cxf\_user.create\_contact(data)
```
 ### create_contact_deal(contact_id, data) [](#method-i-create_contact_deal)
 ### Create contact deal.[¶](#method-i-create_contact_deal-label-Create+contact+deal.) [↑](#top)

Create a contact deal with data.

#### Parameters[¶](#method-i-create_contact_deal-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_contact_deal-label-Example) [↑](#top)

```
data= {deal\_id:6}@data=@cxf\_user.create\_contact\_deal(5,data.to\_json)
```
 ### create_contact_user(contact_id, data) [](#method-i-create_contact_user)
 ### Create contact user.[¶](#method-i-create_contact_user-label-Create+contact+user.) [↑](#top)

Relate a contact with an user.

#### Parameters[¶](#method-i-create_contact_user-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_contact_user-label-Example) [↑](#top)

```
data= {user\_id:9}@data=@cxf\_user.create\_contact\_user(66,data.to\_json)
```
 ### delete_contact_deal(contact_id, deal_id) [](#method-i-delete_contact_deal)
 ### Delete contact deal.[¶](#method-i-delete_contact_deal-label-Delete+contact+deal.) [↑](#top)

Delete a contact deal with data.

#### Parameters[¶](#method-i-delete_contact_deal-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>deal_id
</dt>
<dd>
<p>(Integer) – Deal id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_contact_deal-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_contact\_deal(5,100)
```
 ### delete_contact_user(contact_id, id) [](#method-i-delete_contact_user)
 ### Delete contact user.[¶](#method-i-delete_contact_user-label-Delete+contact+user.) [↑](#top)

Delete a relationship between a contact and an user.

#### Parameters[¶](#method-i-delete_contact_user-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>id
</dt>
<dd>
<p>(Integer) – User id.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_contact_user-label-Example) [↑](#top)

```
@data=@cxf\_user.delete\_contact\_user(153,9)
```
 ### delete_contacts(data) [](#method-i-delete_contacts)
 ### Delete contacts.[¶](#method-i-delete_contacts-label-Delete+contacts.) [↑](#top)

Delete different contacts.

#### Parameters[¶](#method-i-delete_contacts-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-delete_contacts-label-Example) [↑](#top)

```
data = { ids": %w[67 68 69] }
@data = @cxf_user.delete_contacts(data)
```
 ### get_contact(id, options = nil) [](#method-i-get_contact)
 ### Get contact.[¶](#method-i-get_contact-label-Get+contact.) [↑](#top)

Get a contact data.

#### Parameters[¶](#method-i-get_contact-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-get_contact-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_contact(5)
```

#### Second Example[¶](#method-i-get_contact-label-Second+Example) [↑](#top)

```
options= {sort:'id','fields[contacts]':'id, email'}@data=@cxf\_user.get\_contact(5,options)
```
 ### get_contact_deal(contact_id) [](#method-i-get_contact_deal)
 ### Get contact deals.[¶](#method-i-get_contact_deal-label-Get+contact+deals.) [↑](#top)

Get a collection of deals of a contact.

#### Parameters[¶](#method-i-get_contact_deal-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_contact_deal-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contact\_deal(5)
```
 ### get_contact_segments(contact_id) [](#method-i-get_contact_segments)
 ### Get contact segments.[¶](#method-i-get_contact_segments-label-Get+contact+segments.) [↑](#top)

Get segments of a contact.

#### Parameters[¶](#method-i-get_contact_segments-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_contact_segments-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contact\_segments(1)
```
 ### get_contact_submissions(contact_id) [](#method-i-get_contact_submissions)
 ### Get contact submissions.[¶](#method-i-get_contact_submissions-label-Get+contact+submissions.) [↑](#top)

Get submissions of a contact.

#### Parameters[¶](#method-i-get_contact_submissions-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_contact_submissions-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contact\_submissions(146)
```
 ### get_contact_tags(contact_id) [](#method-i-get_contact_tags)
 ### Get contact tags.[¶](#method-i-get_contact_tags-label-Get+contact+tags.) [↑](#top)

Get tags of a contact.

#### Parameters[¶](#method-i-get_contact_tags-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_contact_tags-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contact\_tags(1)
```
 ### get_contact_user(contact_id) [](#method-i-get_contact_user)
 ### Get contact user.[¶](#method-i-get_contact_user-label-Get+contact+user.) [↑](#top)

Get user data of a contact.

#### Parameters[¶](#method-i-get_contact_user-label-Parameters) [↑](#top)

TODO: Replace Resource collection options url

<dl class="rdoc-list note-list">
<dt>contact_id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>options
</dt>
<dd>
<p>(Hash) – List of Resource Collection Options shown above can be used as parameter.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_contact_user-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contact\_user(66)
```
 ### get_contacts(options = nil, use_post = true) [](#method-i-get_contacts)
 ### Get contacts.[¶](#method-i-get_contacts-label-Get+contacts.) [↑](#top)

Get a collection of contacts.

#### Parameters[¶](#method-i-get_contacts-label-Parameters) [↑](#top)
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
#### First Example[¶](#method-i-get_contacts-label-First+Example) [↑](#top)

```
@data=@cxf\_user.get\_contacts
```

#### Second Example[¶](#method-i-get_contacts-label-Second+Example) [↑](#top)

```
options= {sort:'id','fields[contacts]':'id, email'}@data=@cxf\_user.get\_contacts(options)
```

#### Third Example[¶](#method-i-get_contacts-label-Third+Example) [↑](#top)

```
options= {sort:'id','fields[contacts]':'id, email'}@data=@cxf\_user.get\_contacts(options,true)
```
 ### get_contacts_support_data() [](#method-i-get_contacts_support_data)
 ### Get contacts support data.[¶](#method-i-get_contacts_support_data-label-Get+contacts+support+data.) [↑](#top)

#### Example[¶](#method-i-get_contacts_support_data-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_contacts\_support\_data
```
 ### get_online_activity(id) [](#method-i-get_online_activity)
 ### Get online activity.[¶](#method-i-get_online_activity-label-Get+online+activity.) [↑](#top)

Get online activity of a contact.

#### Parameters[¶](#method-i-get_online_activity-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_online_activity-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_online\_activity(5)
```
 ### merge_contacts(id, data) [](#method-i-merge_contacts)
 ### Create contact merge.[¶](#method-i-merge_contacts-label-Create+contact+merge.) [↑](#top)

Merge contacts.

#### Parameters[¶](#method-i-merge_contacts-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted. It contains ids to be merged.</p>
</dd>
</dl>
#### Example[¶](#method-i-merge_contacts-label-Example) [↑](#top)

```
data= {mergeContactIds:[152] }@data=@cxf\_user.merge\_contacts(151,data)
```
 ### send_magic_links(data) [](#method-i-send_magic_links)
 ### Send magic links.[¶](#method-i-send_magic_links-label-Send+magic+links.) [↑](#top)

Send magic links to contacts.

#### Parameters[¶](#method-i-send_magic_links-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-send_magic_links-label-Example) [↑](#top)

```
data= {contacts:%w[email\_1@example.com email\_2@example.com email\_3@example.com],templateId:2,redirectUrl:"",lifeTime:1440,maxVisits:3}@data=@cxf\_user.send\_magic\_links(data)
```
 ### update_contact(id, data, options = nil) [](#method-i-update_contact)
 ### Update contact.[¶](#method-i-update_contact-label-Update+contact.) [↑](#top)

Update contact data.

#### Parameters[¶](#method-i-update_contact-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – Contact id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_contact-label-Example) [↑](#top)

```
data= {email:'email\_modified@example.com',company\_id:3}@data=@cxf\_user.update\_contact(65,data)
```
 