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

defmodule GoogleApi.ServiceUser.V1.Model.Mixin do
  @moduledoc """
  Declares an API Interface to be included in this interface. The including interface must redeclare all the methods from the included interface, but documentation and options are inherited as follows:  - If after comment and whitespace stripping, the documentation   string of the redeclared method is empty, it will be inherited   from the original method.  - Each annotation belonging to the service config (http,   visibility) which is not set in the redeclared method will be   inherited.  - If an http annotation is inherited, the path pattern will be   modified as follows. Any version prefix will be replaced by the   version of the including interface plus the root path if   specified.  Example of a simple mixin:      package google.acl.v1;     service AccessControl {       // Get the underlying ACL object.       rpc GetAcl(GetAclRequest) returns (Acl) {         option (google.api.http).get &#x3D; \&quot;/v1/{resource&#x3D;**}:getAcl\&quot;;       }     }      package google.storage.v2;     service Storage {       //       rpc GetAcl(GetAclRequest) returns (Acl);        // Get a data record.       rpc GetData(GetDataRequest) returns (Data) {         option (google.api.http).get &#x3D; \&quot;/v2/{resource&#x3D;**}\&quot;;       }     }  Example of a mixin configuration:      apis:     - name: google.storage.v2.Storage       mixins:       - name: google.acl.v1.AccessControl  The mixin construct implies that all methods in &#x60;AccessControl&#x60; are also declared with same name and request/response types in &#x60;Storage&#x60;. A documentation generator or annotation processor will see the effective &#x60;Storage.GetAcl&#x60; method after inherting documentation and annotations as follows:      service Storage {       // Get the underlying ACL object.       rpc GetAcl(GetAclRequest) returns (Acl) {         option (google.api.http).get &#x3D; \&quot;/v2/{resource&#x3D;**}:getAcl\&quot;;       }       ...     }  Note how the version in the path pattern changed from &#x60;v1&#x60; to &#x60;v2&#x60;.  If the &#x60;root&#x60; field in the mixin is specified, it should be a relative path under which inherited HTTP paths are placed. Example:      apis:     - name: google.storage.v2.Storage       mixins:       - name: google.acl.v1.AccessControl         root: acls  This implies the following inherited HTTP annotation:      service Storage {       // Get the underlying ACL object.       rpc GetAcl(GetAclRequest) returns (Acl) {         option (google.api.http).get &#x3D; \&quot;/v2/acls/{resource&#x3D;**}:getAcl\&quot;;       }       ...     }

  ## Attributes

  - name (String): The fully qualified name of the interface which is included. Defaults to: `null`.
  - root (String): If non-empty specifies a path under which inherited HTTP paths are rooted. Defaults to: `null`.
  """

  defstruct [
    :"name",
    :"root"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Mixin do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Mixin do
  def encode(value, options) do
    GoogleApi.ServiceUser.V1.Deserializer.serialize_non_nil(value, options)
  end
end

