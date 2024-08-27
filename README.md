# Cxf Ruby SDK

This is a library to connect apps built on ruby to Cxf.Cloud

## Installation

Add gem to the Gemfile

```bash
gem 'cxf'
```

## Configure

Add the following configuration to the controller and include MintClients and UserAuthHelper (if you log in with a contact, you can use ContactAuthHelper)
NOTE: Proxy automatically renew the token, so you don't need to worry about it

if you haven't run the generator yet, you can use after_action to update the token

```ruby
require 'cxf'

class ApplicationController < ActionController::Base
  include CxfClients
  include UserAuthHelper # if you log in with a user
  include ContactAuthHelper # if you log in with a contact

  after_action :update_user_tokens # if you haven't run the generator yet and you log in with a user
  after_action :update_contact_tokens # if you haven't run the generator yet and you log in with a contact
end
```

## Usage

Using Cxf Public API

```ruby
cxf_pub = Cxf::Pub.new(cxf_url, api_key)
cxf_pub.get_stories
```

Using Cxf Contact API

```ruby
cxf_contact_login(email, password)
@cxf_contact.me
```

Using Cxf User API

```ruby
cxf_user_login(email, password)
@cxf_user.get_contacts
```

Using Cxf User API by Service account

```ruby
# Usually the api_key and the session token are the same, you can go to the service accounts section
# from your Cxf instance and generate your service account api key  
cxf_service_account = Cxf::User.new(cxf_url, api_key, api_key)
cxf_service_account.get_contacts
```

## Generate cxf files

This command will generate the cxf_config.yml.erb file, API controlles and routes to have available the cxf
endpoints

```bash
rails generate cxf_files
```

## Contact tracking usage

Your app controller needs to be inherited from Cxf::BaseController

```ruby
# application_controller.rb

class ApplicationController < Cxf::BaseController
end
```

This heritance will make the following class variables available:

| Variable       |                                     Description                                      |
|----------------|:------------------------------------------------------------------------------------:|
| @host          |                       Host defined in cxf_config.yml.erb file                        |
| @api_key       |                      API key defined in cxf_config.yml.erb file                      |
| @cxf_pub       |                          An already instanced public client                          |
| @contact_token |                     A token used by cxf to identify the contact                      |
| @visit_id      |                        An identifier of the visit registered                         |
| @cxf_contact   | An already instanced contact client (not usable until call the contact login method) |

And the following controller methods:

| Method                       |       Parameters        | Return value |                          Description                           |
|------------------------------|:-----------------------:|:------------:|:--------------------------------------------------------------:|
| cxf_contact_signed_in?       |          none           |   boolean    |         Indicates if the contact has an active session         |
| cxf_contact_login            |     email, password     |     void     |                    Starts a contact session                    |
| cxf_contact_logout           |          none           |     void     |                     Ends a contact session                     |
| cxf_contact_magic_link_login | hash, redirect_in_error |     void     | Starts a contact session in cxf.cloud and set a session cookie |

## Admin controller usage

If want to have a private section where only a cxf user can acces and use the private user api is needed to inherit
from the AdminBaseController.

```ruby
# admin_controller.rb

class AdminController < Cxf::AdminBaseController
end
```

This heritance will make the following class variables available:

| Variable             |                                   Description                                   |
|----------------------|:-------------------------------------------------------------------------------:|
| @host                |                     Host defined in cxf_config.yml.erb file                     |
| @api_key             |                   API key defined in cxf_config.yml.erb file                    |
| @cxf_user            | An already instanced user client  (not usable until call the user login method) |
| @cxf_service_account |                   An already instanced service_account client                   |

And the following controller methods:

| Method                    |   Parameters    | Return value |                         Description                         |
|---------------------------|:---------------:|:------------:|:-----------------------------------------------------------:|
| cxf_user_login            | email, password |     void     |                    Starts a user session                    |
| cxf_user_logout           |      none       |     void     |                     Ends a user session                     |
| cxf_user_signed_in?       |      none       |   Boolean    |         Indicates if the user has an active session         |
| cxf_user_magic_link_login |      hash       |     void     | Starts a user session in cxf.cloud and set a session cookie |

## Cxf config file

The cxf.config.yml file allows to set the Cxf instance to which the implementation will access, it can add the host,
api key for Cxf, in addition to setting the cache rules with redis, if you want to add a url to cache , you should add
it to the groups array and set the cache time.

```yaml
  # Cxf connection configuration
  cxf:
    host: http://your_host_goes_here.com
    api_key: your_cxf_api_key_goes_here
    cxf_slug: slug_id #save id and token in redis
  redis_cache:
    use_cache: boolean_value_to_enable_and_disable_cache
    redis_host: your_redis_server_host
    redis_port: your_redis_server_port
    redis_db: your_redis_database
    groups:
      - urls:
          - group_of_urls
        time: time_that_will_be_applied_to_urls_in_seconds
  sdk:
    debug: false
    # Timeout is specified in seconds
    default_http_timeout: 30 # Allows setting a default timeout for all HTTP calls.
    get_http_timeout: 30 # Allows setting a default timeout for all GET calls.
    post_http_timeout: 30 # Allows setting a default timeout for all POST calls.
    put_http_timeout: 30 # Allows setting a default timeout for all PUT calls.
    delete_http_timeout: 30 # Allows setting a default timeout for all DELETE calls.
```

To enable sdk debugging you can change the variable debug.
Finally, to configure the sharing of cookies between domains, you can configure the "iframe cookies", where you
establish how long the cookie will have, if it is activated and the domains to share cookies (to have this
functionality, we recommend the use of the template).

```yaml
  # Cxf connection configuration
  sdk:
    debug: false
  cookies_iframe:
    activated: boolean_value_to_enable_and_disable_cookies_iframe
    expire_time: expire_time_of_cookies_iframe_in_hours
    hosts:
      - array_of_host_to_send_cookies
```

## Override default clients

If you want other clients for admin/base controller, you need to specify them with the "define_cxf_clients" method

Example:

```ruby
# admin_controller.rb

class AdminController < Cxf::AdminBaseController
  def define_cxf_clients
    %w[contact user pub service_account]
  end
end
```

## Override default timeouts

If you want specific timeouts per instance, you can define cxf_sdk_timeouts_config

Example:

```ruby
# admin_controller.rb

class AdminController < Cxf::AdminBaseController
  def cxf_sdk_timeouts_config
    {
      default: 30,
      get: 50,
      post: 40,
      put: 30,
      delete: 10
    }
  end
end
```

## Error catching

The SDK provides different errors that are identified according to the response provided by Cxf,
the errors can be 404, 401, 422, 500, etc.
To rescue these errors, it is done as follows:

```ruby

# Example 1
begin
  @cxf_pub.client.raw('/invalid-url')
rescue => Cxf::Errors::ResourceNotFoundException
  puts "Error 404"
end

# Example 2

begin
  response = @cxf_contact.register(data)
rescue Cxf::Errors::ValidationException => e
  response = e.to_h
  # This will return a Hash with the information needed to debug
  # Example:
  {
    :client => sdk_instance,
    # Client instance
    # @host = "https://your_cxf_instance",
    # @api_key = current_api_key,
    # @session_token = current_session_token,
    # @contact_token_id = current_contact_token_id,
    # @visit_id = current_visit_id,
    # @debug = current_debug_flag,
    # @scope = current_scope,
    # @base_url = current_base_url
    :title => "Request failed with status 422",
    :detail => "Unprocessable Entity",
    :http_status => 422,
    :response => { "email" => ["The email has already been taken."] },
    :errors => ["The email has already been taken."]
  }
end

```

The current errors are:

| Error                     | Status |              Full error name              |
|---------------------------|:------:|:-----------------------------------------:|
| AccessDeniedException     |  401   |    Cxf::Errors::AccessDeniedException     |
| ResourceNotFoundException |  404   |  Cxf::Errors::ResourceNotFoundException   |
| MethodNotAllowedException |  405   |  Cxf::Errors::MethodNotAllowedException   |
| ValidationException       |  422   |   Cxf::Errors::ValidationException   |
| InternalServerException   |  500   | Cxf::Errors::InternalServerException |

<details>
  <summary> Cxf::Pub </summary>

- Cxf::Pub::Config
  - [Cxf::Pub::Config::Attributes](doc/pub/config/attributes.md)
  - [Cxf::Pub::Config::PublicFolders](doc/pub/config/public_folders.md)
  - [Cxf::Pub::Config::Tags](doc/pub/config/tags.md)
  - [Cxf::Pub::Config::Taxonomies](doc/pub/config/taxonomies.md)


- Cxf::Pub::Content
  - [Cxf::Pub::Content::Assets](doc/pub/content/assets.md)
  - [Cxf::Pub::Content::ContentBundles](doc/pub/content/content_bundles.md)
  - [Cxf::Pub::Content::ContentInstanceVersions](doc/pub/content/content_instance_versions.md)
  - [Cxf::Pub::Content::ContentInstances](doc/pub/content/content_instances.md)
  - [Cxf::Pub::Content::Forms](doc/pub/content/forms.md)
  - [Cxf::Pub::Content::Stories](doc/pub/content/stories.md)
  - [Cxf::Pub::Content::StoryVersions](doc/pub/content/story_versions.md)

- Cxf::Pub::Ecommerce
  - [Cxf::Pub::Ecommerce::Locations](doc/pub/ecommerce/locations.md)
  - [Cxf::Pub::Ecommerce::Orders](doc/pub/ecommerce/orders.md)

</details>

<details>
  <summary> Cxf::Contact </summary>

- Cxf::Contact::Config
  - [Cxf::Contact::Config::Appointments](doc/contact/config/appointments.md)


- Cxf::Contact::Content
  - [Cxf::Contact::Content::Conversations](doc/contact/content/conversations.md)

- Cxf::Contact::Ecommerce
  - [Cxf::Contact::Ecommerce::OrderItemGroups](doc/contact/ecommerce/order_item_groups.md)
  - [Cxf::Contact::Ecommerce::OrderItems](doc/contact/ecommerce/order_items.md)
  - [Cxf::Contact::Ecommerce::Orders](doc/contact/ecommerce/orders.md)
  - [Cxf::Contact::Ecommerce::Vouchers](doc/contact/ecommerce/vouchers.md)

</details>

<details>
  <summary> Cxf::User </summary>

- Cxf::User::Config
  - [Cxf::User::Config::ApiKey](doc/user/config/api_key.md)
  - [Cxf::User::Config::Appointments](doc/user/config/appointments.md)
  - [Cxf::User::Config::AttributeGroups](doc/user/config/attribute_groups.md)
  - [Cxf::User::Config::Attributes](doc/user/config/attributes.md)
  - [Cxf::User::Config::Calendar](doc/user/config/calendar.md)
  - [Cxf::User::Config::PublicFolder](doc/user/config/public_folders.md)
  - [Cxf::User::Config::Relationships](doc/user/config/relationships.md)
  - [Cxf::User::Config::Roles](doc/user/config/roles.md)
  - [Cxf::User::Config::Seeds](doc/user/config/seeds.md)
  - [Cxf::User::Config::SystemSettings](doc/user/config/system_settings.md)
  - [Cxf::User::Config::Tags](doc/user/config/tags.md)
  - [Cxf::User::Config::Taxonomies](doc/user/config/taxonomies.md)
  - [Cxf::User::Config::Teams](doc/user/config/teams.md)
  - [Cxf::User::Config::Users](doc/user/config/users.md)

- [Cxf::User::Contacts](doc/user/contacts/contacts.md)

- [Cxf::User::Content](doc/user/content/content.md)
  - [Cxf::User::Content::Assets](doc/user/content/assets.md)
  - [Cxf::User::Content::ContentInstances](doc/user/content/content_instances.md)
  - [Cxf::User::Content::ContentTemplates](doc/user/content/content_templates.md)
  - [Cxf::User::Content::Conversations](doc/user/content/conversations.md)
  - [Cxf::User::Content::Dam](doc/user/content/dam.md)
  - [Cxf::User::Content::Forms](doc/user/content/forms.md)
  - [Cxf::User::Content::MessageTemplates](doc/user/content/message_templates.md)
  - [Cxf::User::Content::Messages](doc/user/content/messages.md)
  - [Cxf::User::Content::Pages](doc/user/content/pages.md)
  - [Cxf::User::Content::Stories](doc/user/content/stories.md)
  - [Cxf::User::Content::StoryTemplates](doc/user/content/story_templates.md)
  - [Cxf::User::Content::StoryVersions](doc/user/content/story_versions.md)

- Cxf::User::Crm
  - [Cxf::User::Crm::Companies](doc/user/crm/companies.md)
  - [Cxf::User::Crm::Contacts](doc/user/crm/contacts.md)
  - [Cxf::User::Crm::Deals](doc/user/crm/deals.md)
  - [Cxf::User::Crm::Favorites](doc/user/crm/favorites.md)
  - [Cxf::User::Crm::Segments](doc/user/crm/segments.md)
  - [Cxf::User::Crm::Users](doc/user/crm/users.md)
  - [Cxf::User::Crm::WorkflowStepObjects](doc/user/crm/workflow_step_objects.md)
  - [Cxf::User::Crm::WorkflowSteps](doc/user/crm/workflow_steps.md)
  - [Cxf::User::Crm::Workflows](doc/user/crm/workflows.md)

- Cxf::User::Ecommerce
  - [Cxf::User::Ecommerce::ItemPrices](doc/user/ecommerce/item_prices.md)
  - [Cxf::User::Ecommerce::Locations](doc/user/ecommerce/locations.md)
  - [Cxf::User::Ecommerce::OrderItemGroups](doc/user/ecommerce/order_item_groups.md)
  - [Cxf::User::Ecommerce::OrderStatuses](doc/user/ecommerce/order_statuses.md)

  - [Cxf::User::Ecommerce::Orders](doc/user/ecommerce/orders.md)
  - [Cxf::User::Ecommerce::PriceList](doc/user/ecommerce/price_list.md)
  - [Cxf::User::Ecommerce::ProductTemplates](doc/user/ecommerce/product_templates.md)
  - [Cxf::User::Ecommerce::ProductVariations](doc/user/ecommerce/product_variations.md)
  - [Cxf::User::Ecommerce::Products](doc/user/ecommerce/products.md)
  - [Cxf::User::Ecommerce::Skus](doc/user/ecommerce/skus.md)
  - [Cxf::User::Ecommerce::Taxes](doc/user/ecommerce/taxes.md)
  - [Cxf::User::Ecommerce::VariantOptions](doc/user/ecommerce/variant_options.md)
  - [Cxf::User::Ecommerce::VariantValues](doc/user/ecommerce/variant_values.md)
  - [Cxf::User::Ecommerce::Vouchers](doc/user/ecommerce/vouchers.md)

- [Cxf::User::Helpers](doc/user/helpers/helpers.md)
  - [Cxf::User::Helpers::ObjectActivities](doc/user/helpers/object_activities.md)
  - [Cxf::User::Helpers::ObjectFolders](doc/user/helpers/object_folders.md)
  - [Cxf::User::Helpers::UserFolders](doc/user/helpers/user_folders.md)

- [Cxf::User::Marketing](doc/user/marketing/marketing.md)

- [Cxf::User::Profile](doc/user/profile/profile.md)

</details>

<details>
  <summary> Cxf::Threads </summary>

  - [Cxf::MakeMultipleRequest](doc/threads/make_multiple_request.md)
</details>
