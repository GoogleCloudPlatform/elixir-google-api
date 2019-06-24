# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.User do
  @moduledoc """
  A Cloud SQL user resource.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be removed from a future version of the API.
  *   `host` (*type:* `String.t`, *default:* `nil`) - The host name from which the user can connect. For insert operations, host defaults to an empty string. For update operations, host is specified as part of the request URL. The host name cannot be updated after insertion.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for update since it is already specified on the URL.
  *   `kind` (*type:* `String.t`, *default:* `sql#user`) - This is always sql#user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the user in the Cloud SQL instance. Can be omitted for update since it is already specified in the URL.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password for the user.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for update since it is already specified on the URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :host => String.t(),
          :instance => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :password => String.t(),
          :project => String.t()
        }

  field(:etag)
  field(:host)
  field(:instance)
  field(:kind)
  field(:name)
  field(:password)
  field(:project)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.User do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
