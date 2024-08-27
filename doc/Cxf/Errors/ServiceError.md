# class Cxf::Errors::ServiceError [](#class-Cxf::Errors::ServiceError) [](#top)
 ## Attributes
 ### client[R] [](#attribute-i-client)
 ### http_status[R] [](#attribute-i-http_status)
 ### response[R] [](#attribute-i-response)
 ### title[R] [](#attribute-i-title)
 ## Public Class Methods
 ### new(client, title, detail, http_status, response) [](#method-c-new)
 @param [Client] client @param [String] title @param [String] detail @param [Integer] [`http_status`](ServiceError.html#attribute-i-http_status) @param [String [`Object`](../../Object.html) Array] response

 ## Public Instance Methods
 ### detail() [](#method-i-detail)
 @return [String]

 ### to_h(extra_fields = {}) [](#method-i-to_h)
 ### to_s() [](#method-i-to_s)
 