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

defmodule GoogleApi.ServiceUser.V1.Model.AuthRequirement do
  @moduledoc """
  User-defined authentication requirements, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).

  ## Attributes

  - audiences (String.t): NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in all the runtime components.  The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, only JWTs with audience \&quot;https://Service_name/API_name\&quot; will be accepted. For example, if no audiences are in the setting, LibraryService API will only accept JWTs with the following audience \&quot;https://library-example.googleapis.com/google.example.library.v1.LibraryService\&quot;.  Example:      audiences: bookstore_android.apps.googleusercontent.com,                bookstore_web.apps.googleusercontent.com Defaults to: `null`.
  - providerId (String.t): id from authentication provider.  Example:      provider_id: bookstore_auth Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audiences => any(),
          :providerId => any()
        }

  field(:audiences)
  field(:providerId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.AuthRequirement do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.AuthRequirement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.AuthRequirement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
