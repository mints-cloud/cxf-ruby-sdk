# class Cxf::Contact [](#class-Cxf::Contact) [](#top)
 ## Attributes
 ### client[R] [](#attribute-i-client)
 ## Public Class Methods
 ### new( host, api_key, session_token = nil, refresh_token = nil, contact_token_id = nil, debug = false, timeouts = {} ) [](#method-c-new)
 ### Initialize.[¶](#method-c-new-label-Initialize.) [↑](#top)

Class constructor.

#### Parameters[¶](#method-c-new-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>host
</dt>
<dd>
<p>(String) – It’s the visitor IP.</p>
</dd>
<dt>api_key
</dt>
<dd>
<p>(String) – <a href="../Cxf.html"><code>Cxf</code></a> instance api key.</p>
</dd>
<dt>contact_token_id
</dt>
<dd>
<p>(Integer) – Cookie ‘cxf_contact_id’ value (cxf_contact_token).</p>
</dd>
</dl>
#### Return[¶](#method-c-new-label-Return) [↑](#top)

Returns a [`Contact`](Contact.html) object

 ## Public Instance Methods
 ### change_password(data) [](#method-i-change_password)
 ### Change Password.[¶](#method-i-change_password-label-Change+Password.) [↑](#top)

Change password without email. To change the password a contact must be logged.

#### Parameters[¶](#method-i-change_password-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – A new password allocated in a data key.</p>
</dd>
</dl>
#### Example[¶](#method-i-change_password-label-Example) [↑](#top)

```
data= {password:'new\_password'}@data=@cxf\_contact.change\_password(data)
```
 ### get_client() [](#method-i-get_client)
 ### login(email, password) [](#method-i-login)
 ### Login.[¶](#method-i-login-label-Login.) [↑](#top)

Starts a contact session.

#### Parameters[¶](#method-i-login-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>email
</dt>
<dd>
<p>(String) – The email that will be logged.</p>
</dd>
<dt>password
</dt>
<dd>
<p>(String) – The password of the email.</p>
</dd>
</dl>
#### Example[¶](#method-i-login-label-Example) [↑](#top)

```
@cxf\_contact.login('email@example.com','password')
```
 ### logout() [](#method-i-logout)
 ### Logout.[¶](#method-i-logout-label-Logout.) [↑](#top)

Ends a contact session previously logged.

#### Example[¶](#method-i-logout-label-Example) [↑](#top)

```
@data=@cxf\_contact.logout
```
 ### magic_link_login(token) [](#method-i-magic_link_login)
 ### Magic Link Login.[¶](#method-i-magic_link_login-label-Magic+Link+Login.) [↑](#top)

Starts a contact session with a token received in the contact email. The token will be received by [`send_magic_link`](Contact.html#method-i-send_magic_link) method.

#### Parameters[¶](#method-i-magic_link_login-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>token
</dt>
<dd>
<p>(String) – The email token that will be used to log in.</p>
</dd>
</dl>
#### Example[¶](#method-i-magic_link_login-label-Example) [↑](#top)

```
@cxf\_contact.magic\_link\_login('d8618c6d-a165-41cb-b3ec-d053cbf30059:zm54HtRdfHED8dpILZpjyqjPIceiaXNLfOklqM92fveBS0nDtyPYBlI4CPlPe3zq')
```
 ### me(options = nil) [](#method-i-me)
 ### Me.[¶](#method-i-me-label-Me.) [↑](#top)

Get contact logged info.

#### Parameters[¶](#method-i-me-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt># options
</dt>
<dd>
<p>(Hash) – List of <a href="#class-Cxf::Pub-label-Resource+collections+options+">Resource collection Options</a> shown above can be used as parameter.</p>
</dd>
</dl>
#### First Example[¶](#method-i-me-label-First+Example) [↑](#top)

```
@data=@cxf\_contact.me
```

#### Second Example[¶](#method-i-me-label-Second+Example) [↑](#top)

```
options= {attributes:true,taxonomies:true}@data=@cxf\_contact.me(options)
```
 ### oauth_login(data) [](#method-i-oauth_login)
 ### OAuth Login.[¶](#method-i-oauth_login-label-OAuth+Login.) [↑](#top)

Login a contact using oauth.

 ### recover_password(data) [](#method-i-recover_password)
 ### Recover Password.[¶](#method-i-recover_password-label-Recover+Password.) [↑](#top)

Send a email that contains a token to a contact. That token will be used in [`reset_password`](Contact.html#method-i-reset_password) to establish a new password.

#### Parameters[¶](#method-i-recover_password-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – It’s a data key where will be hosted the destination email.</p>
</dd>
</dl>
#### Example[¶](#method-i-recover_password-label-Example) [↑](#top)

```
data= {email:'email@example.com'}@cxf\_contact.recover\_password(data)
```
 ### register(data) [](#method-i-register)
 ### Register.[¶](#method-i-register-label-Register.) [↑](#top)

Register a contact.

#### Parameters[¶](#method-i-register-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – It’s the register data.</p>
</dd>
</dl>
#### Example[¶](#method-i-register-label-Example) [↑](#top)

```
data= {email:'email@example.com',given\_name:'Given Name',last\_name:'Last Name',password:'password'}@cxf\_contact.register(data);
```
 ### reset_password(data) [](#method-i-reset_password)
 ### Reset Password.[¶](#method-i-reset_password-label-Reset+Password.) [↑](#top)

Reset password using a token. The token is obtained by [`recover_password`](Contact.html#method-i-recover_password) method.

#### Parameters[¶](#method-i-reset_password-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – It’s a set of data which contains all the information to reset a contact password.</p>
</dd>
</dl>
#### Example[¶](#method-i-reset_password-label-Example) [↑](#top)

```
data= {email:'email@example.com',password:'password',password\_confirmation:'password',token:'644aa3aa0831d782cc42e42b11aedea9a2234389af4f429a8d96651295ecfa09'}@cxf\_contact.reset\_password(data)
```
 ### send_magic_link(email_or_phone, template_slug, redirect_url = '', life_time = 1440, max_visits = nil, driver = 'email') [](#method-i-send_magic_link)
 ### Send Magic Link.[¶](#method-i-send_magic_link-label-Send+Magic+Link.) [↑](#top)

Send magic link to contact by email. That magic link will be used in [`magic_link_login`](Contact.html#method-i-magic_link_login) method.

#### Parameters[¶](#method-i-send_magic_link-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>email_or_phone
</dt>
<dd>
<p>(String) – Contact’s email.</p>
</dd>
<dt>template_slug
</dt>
<dd>
<p>(String) – Email template’s slug to be used in the email.</p>
</dd>
<dt>redirectUrl
</dt>
<dd>
<p>(String) – Url to be redirected in the implemented page.</p>
</dd>
<dt>lifeTime
</dt>
<dd>
<p>(Integer) – Maximum time of use in minutes.</p>
</dd>
<dt>maxVisits
</dt>
<dd>
<p>(Integer) – The maximum number of uses of a token.</p>
</dd>
</dl>
#### First Example[¶](#method-i-send_magic_link-label-First+Example) [↑](#top)

```
@cxf\_contact.send\_magic\_link('email@example.com','template\_slug')
```

#### Second Example[¶](#method-i-send_magic_link-label-Second+Example) [↑](#top)

```
@cxf\_contact.send\_magic\_link('+526561234567','template\_slug','',1440,3,'whatsapp')
```
 ### status() [](#method-i-status)
 ### Status.[¶](#method-i-status-label-Status.) [↑](#top)

Get contact logged status.

#### Example[¶](#method-i-status-label-Example) [↑](#top)

```
@data=@cxf\_contact.status
```
 ### update(data) [](#method-i-update)
 ### Update.[¶](#method-i-update-label-Update.) [↑](#top)

Update logged contact attributes.

#### Parameters[¶](#method-i-update-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – It’s the data to update with a session active.</p>
</dd>
</dl>
#### Example[¶](#method-i-update-label-Example) [↑](#top)

```
data= {given\_name:'Given Name',last\_name:'Last Name'}@data=@cxf\_contact.update(data)
```
 