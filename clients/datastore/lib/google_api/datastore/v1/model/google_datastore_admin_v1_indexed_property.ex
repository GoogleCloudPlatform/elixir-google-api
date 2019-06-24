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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1IndexedProperty do
  @moduledoc """
  A property of an index.

  ## Attributes

  *   `direction` (*type:* `String.t`, *default:* `nil`) - The indexed property's direction.  Must not be DIRECTION_UNSPECIFIED.
      Required.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The property name to index.
      Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :direction => String.t(),
          :name => String.t()
        }

  field(:direction)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1IndexedProperty do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1IndexedProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1IndexedProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
