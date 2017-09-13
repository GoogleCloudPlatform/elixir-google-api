# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceUser.V1.Model.HttpRule do
  @moduledoc """
  &#x60;HttpRule&#x60; defines the mapping of an RPC method to one or more HTTP REST API methods. The mapping specifies how different portions of the RPC request message are mapped to URL path, URL query parameters, and HTTP request body. The mapping is typically specified as an &#x60;google.api.http&#x60; annotation on the RPC method, see \&quot;google/api/annotations.proto\&quot; for details.  The mapping consists of a field specifying the path template and method kind.  The path template can refer to fields in the request message, as in the example below which describes a REST GET operation on a resource collection of messages:       service Messaging {       rpc GetMessage(GetMessageRequest) returns (Message) {         option (google.api.http).get &#x3D; \&quot;/v1/messages/{message_id}/{sub.subfield}\&quot;;       }     }     message GetMessageRequest {       message SubMessage {         string subfield &#x3D; 1;       }       string message_id &#x3D; 1; // mapped to the URL       SubMessage sub &#x3D; 2;    // &#x60;sub.subfield&#x60; is url-mapped     }     message Message {       string text &#x3D; 1; // content of the resource     }  The same http annotation can alternatively be expressed inside the &#x60;GRPC API Configuration&#x60; YAML file.      http:       rules:         - selector: &lt;proto_package_name&gt;.Messaging.GetMessage           get: /v1/messages/{message_id}/{sub.subfield}  This definition enables an automatic, bidrectional mapping of HTTP JSON to RPC. Example:  HTTP | RPC -----|----- &#x60;GET /v1/messages/123456/foo&#x60;  | &#x60;GetMessage(message_id: \&quot;123456\&quot; sub: SubMessage(subfield: \&quot;foo\&quot;))&#x60;  In general, not only fields but also field paths can be referenced from a path pattern. Fields mapped to the path pattern cannot be repeated and must have a primitive (non-message) type.  Any fields in the request message which are not bound by the path pattern automatically become (optional) HTTP query parameters. Assume the following definition of the request message:       service Messaging {       rpc GetMessage(GetMessageRequest) returns (Message) {         option (google.api.http).get &#x3D; \&quot;/v1/messages/{message_id}\&quot;;       }     }     message GetMessageRequest {       message SubMessage {         string subfield &#x3D; 1;       }       string message_id &#x3D; 1; // mapped to the URL       int64 revision &#x3D; 2;    // becomes a parameter       SubMessage sub &#x3D; 3;    // &#x60;sub.subfield&#x60; becomes a parameter     }   This enables a HTTP JSON to RPC mapping as below:  HTTP | RPC -----|----- &#x60;GET /v1/messages/123456?revision&#x3D;2&amp;sub.subfield&#x3D;foo&#x60; | &#x60;GetMessage(message_id: \&quot;123456\&quot; revision: 2 sub: SubMessage(subfield: \&quot;foo\&quot;))&#x60;  Note that fields which are mapped to HTTP parameters must have a primitive type or a repeated primitive type. Message types are not allowed. In the case of a repeated type, the parameter can be repeated in the URL, as in &#x60;...?param&#x3D;A&amp;param&#x3D;B&#x60;.  For HTTP method kinds which allow a request body, the &#x60;body&#x60; field specifies the mapping. Consider a REST update method on the message resource collection:       service Messaging {       rpc UpdateMessage(UpdateMessageRequest) returns (Message) {         option (google.api.http) &#x3D; {           put: \&quot;/v1/messages/{message_id}\&quot;           body: \&quot;message\&quot;         };       }     }     message UpdateMessageRequest {       string message_id &#x3D; 1; // mapped to the URL       Message message &#x3D; 2;   // mapped to the body     }   The following HTTP JSON to RPC mapping is enabled, where the representation of the JSON in the request body is determined by protos JSON encoding:  HTTP | RPC -----|----- &#x60;PUT /v1/messages/123456 { \&quot;text\&quot;: \&quot;Hi!\&quot; }&#x60; | &#x60;UpdateMessage(message_id: \&quot;123456\&quot; message { text: \&quot;Hi!\&quot; })&#x60;  The special name &#x60;*&#x60; can be used in the body mapping to define that every field not bound by the path template should be mapped to the request body.  This enables the following alternative definition of the update method:      service Messaging {       rpc UpdateMessage(Message) returns (Message) {         option (google.api.http) &#x3D; {           put: \&quot;/v1/messages/{message_id}\&quot;           body: \&quot;*\&quot;         };       }     }     message Message {       string message_id &#x3D; 1;       string text &#x3D; 2;     }   The following HTTP JSON to RPC mapping is enabled:  HTTP | RPC -----|----- &#x60;PUT /v1/messages/123456 { \&quot;text\&quot;: \&quot;Hi!\&quot; }&#x60; | &#x60;UpdateMessage(message_id: \&quot;123456\&quot; text: \&quot;Hi!\&quot;)&#x60;  Note that when using &#x60;*&#x60; in the body mapping, it is not possible to have HTTP parameters, as all fields not bound by the path end in the body. This makes this option more rarely used in practice of defining REST APIs. The common usage of &#x60;*&#x60; is in custom methods which don&#39;t use the URL at all for transferring data.  It is possible to define multiple HTTP methods for one RPC by using the &#x60;additional_bindings&#x60; option. Example:      service Messaging {       rpc GetMessage(GetMessageRequest) returns (Message) {         option (google.api.http) &#x3D; {           get: \&quot;/v1/messages/{message_id}\&quot;           additional_bindings {             get: \&quot;/v1/users/{user_id}/messages/{message_id}\&quot;           }         };       }     }     message GetMessageRequest {       string message_id &#x3D; 1;       string user_id &#x3D; 2;     }   This enables the following two alternative HTTP JSON to RPC mappings:  HTTP | RPC -----|----- &#x60;GET /v1/messages/123456&#x60; | &#x60;GetMessage(message_id: \&quot;123456\&quot;)&#x60; &#x60;GET /v1/users/me/messages/123456&#x60; | &#x60;GetMessage(user_id: \&quot;me\&quot; message_id: \&quot;123456\&quot;)&#x60;  # Rules for HTTP mapping  The rules for mapping HTTP path, query parameters, and body fields to the request message are as follows:  1. The &#x60;body&#x60; field specifies either &#x60;*&#x60; or a field path, or is    omitted. If omitted, it indicates there is no HTTP request body. 2. Leaf fields (recursive expansion of nested messages in the    request) can be classified into three types:     (a) Matched in the URL template.     (b) Covered by body (if body is &#x60;*&#x60;, everything except (a) fields;         else everything under the body field)     (c) All other fields. 3. URL query parameters found in the HTTP request are mapped to (c) fields. 4. Any body sent with an HTTP request can contain only (b) fields.  The syntax of the path template is as follows:      Template &#x3D; \&quot;/\&quot; Segments [ Verb ] ;     Segments &#x3D; Segment { \&quot;/\&quot; Segment } ;     Segment  &#x3D; \&quot;*\&quot; | \&quot;**\&quot; | LITERAL | Variable ;     Variable &#x3D; \&quot;{\&quot; FieldPath [ \&quot;&#x3D;\&quot; Segments ] \&quot;}\&quot; ;     FieldPath &#x3D; IDENT { \&quot;.\&quot; IDENT } ;     Verb     &#x3D; \&quot;:\&quot; LITERAL ;  The syntax &#x60;*&#x60; matches a single path segment. The syntax &#x60;**&#x60; matches zero or more path segments, which must be the last part of the path except the &#x60;Verb&#x60;. The syntax &#x60;LITERAL&#x60; matches literal text in the path.  The syntax &#x60;Variable&#x60; matches part of the URL path as specified by its template. A variable template must not contain other variables. If a variable matches a single path segment, its template may be omitted, e.g. &#x60;{var}&#x60; is equivalent to &#x60;{var&#x3D;*}&#x60;.  If a variable contains exactly one path segment, such as &#x60;\&quot;{var}\&quot;&#x60; or &#x60;\&quot;{var&#x3D;*}\&quot;&#x60;, when such a variable is expanded into a URL path, all characters except &#x60;[-_.~0-9a-zA-Z]&#x60; are percent-encoded. Such variables show up in the Discovery Document as &#x60;{var}&#x60;.  If a variable contains one or more path segments, such as &#x60;\&quot;{var&#x3D;foo/*}\&quot;&#x60; or &#x60;\&quot;{var&#x3D;**}\&quot;&#x60;, when such a variable is expanded into a URL path, all characters except &#x60;[-_.~/0-9a-zA-Z]&#x60; are percent-encoded. Such variables show up in the Discovery Document as &#x60;{+var}&#x60;.  NOTE: While the single segment variable matches the semantics of [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String Expansion, the multi segment variable **does not** match RFC 6570 Reserved Expansion. The reason is that the Reserved Expansion does not expand special characters like &#x60;?&#x60; and &#x60;#&#x60;, which would lead to invalid URLs.  NOTE: the field paths in variables and in the &#x60;body&#x60; must not refer to repeated fields or map fields.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"additionalBindings",
    :"authorizations",
    :"body",
    :"custom",
    :"delete",
    :"get",
    :"mediaDownload",
    :"mediaUpload",
    :"patch",
    :"post",
    :"put",
    :"responseBody",
    :"restCollection",
    :"restMethodName",
    :"selector"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.HttpRule do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"additionalBindings", :list, GoogleApi.ServiceUser.V1.Model.HttpRule, options)
    |> deserialize(:"authorizations", :list, GoogleApi.ServiceUser.V1.Model.AuthorizationRule, options)
    |> deserialize(:"custom", :struct, GoogleApi.ServiceUser.V1.Model.CustomHttpPattern, options)
    |> deserialize(:"mediaDownload", :struct, GoogleApi.ServiceUser.V1.Model.MediaDownload, options)
    |> deserialize(:"mediaUpload", :struct, GoogleApi.ServiceUser.V1.Model.MediaUpload, options)
  end
end

