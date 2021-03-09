# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudSearch.V1.Model.Person do
  @moduledoc """
  Object to represent a person.

  ## Attributes

  *   `emailAddresses` (*type:* `list(GoogleApi.CloudSearch.V1.Model.EmailAddress.t)`, *default:* `nil`) - The person's email addresses
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the person to provide information about. See People.get from Google People API.
  *   `obfuscatedId` (*type:* `String.t`, *default:* `nil`) - Obfuscated ID of a person.
  *   `personNames` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Name.t)`, *default:* `nil`) - The person's name
  *   `photos` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Photo.t)`, *default:* `nil`) - A person's read-only photo. A picture shown next to the person's name to help others recognize the person in search results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :emailAddresses => list(GoogleApi.CloudSearch.V1.Model.EmailAddress.t()) | nil,
          :name => String.t() | nil,
          :obfuscatedId => String.t() | nil,
          :personNames => list(GoogleApi.CloudSearch.V1.Model.Name.t()) | nil,
          :photos => list(GoogleApi.CloudSearch.V1.Model.Photo.t()) | nil
        }

  field(:emailAddresses, as: GoogleApi.CloudSearch.V1.Model.EmailAddress, type: :list)
  field(:name)
  field(:obfuscatedId)
  field(:personNames, as: GoogleApi.CloudSearch.V1.Model.Name, type: :list)
  field(:photos, as: GoogleApi.CloudSearch.V1.Model.Photo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.Person do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.Person.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.Person do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
