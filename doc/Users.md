# module Users [](#module-Users) [](#top)
 ## Public Instance Methods
 ### can_users_coach() [](#method-i-can_users_coach)
 ## [`Users`](Users.html)[¶](#method-i-can_users_coach-label-Users) [↑](#top)

### Can [`Users`](Users.html) Coach.[¶](#method-i-can_users_coach-label-Can+Users+Coach.) [↑](#top)

Determine if users can coach.

#### Example[¶](#method-i-can_users_coach-label-Example) [↑](#top)

```
@data=@cxf\_user.can\_users\_coach
```
 ### create_user(data, options = nil) [](#method-i-create_user)
 ### Create user.[¶](#method-i-create_user-label-Create+user.) [↑](#top)

Create an user with data.

#### Parameters[¶](#method-i-create_user-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-create_user-label-Example) [↑](#top)

```
data= {name:'New User Name',email:'new\_user\_email@example.com',is\_confirmed:false,set\_password:true,password:'123456',is\_coach:false}@data=@cxf\_user.create\_user(data)
```
 ### get_user(id) [](#method-i-get_user)
 ### Get user.[¶](#method-i-get_user-label-Get+user.) [↑](#top)

Get an user info.

#### Parameters[¶](#method-i-get_user-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – User id.</p>
</dd>
</dl>
#### Example[¶](#method-i-get_user-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_user(8)
```
 ### get_users(options) [](#method-i-get_users)
 ### Get users.[¶](#method-i-get_users-label-Get+users.) [↑](#top)

Get a collection of users.

#### Example[¶](#method-i-get_users-label-Example) [↑](#top)

```
@data=@cxf\_user.get\_users
```
 ### update_user(id, data, options = nil) [](#method-i-update_user)
 ### Update user.[¶](#method-i-update_user-label-Update+user.) [↑](#top)

Update an user info.

#### Parameters[¶](#method-i-update_user-label-Parameters) [↑](#top)
<dl class="rdoc-list note-list">
<dt>id
</dt>
<dd>
<p>(Integer) – User id.</p>
</dd>
<dt>data
</dt>
<dd>
<p>(Hash) – Data to be submitted.</p>
</dd>
</dl>
#### Example[¶](#method-i-update_user-label-Example) [↑](#top)

```
data= {name:'New User Name Modified',email:'new\_user\_name@example.com',is\_active:true,is\_confirmed:false,roles:''}@data=@cxf\_user.update\_user(14,data)
```
 