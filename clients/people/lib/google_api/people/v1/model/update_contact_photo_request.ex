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

defmodule GoogleApi.People.V1.Model.UpdateContactPhotoRequest do
  @moduledoc """
  A request to update an existing contact's photo. All requests must have a valid photo format: JPEG or PNG.

  ## Attributes

  *   `personFields` (*type:* `String.t`, *default:* `nil`) - Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to empty if not set, which will skip the post mutate get. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined
  *   `photoBytes` (*type:* `String.t`, *default:* `nil`) - Required. Raw photo bytes
  *   `sources` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A mask of what source types to return. Defaults to ReadSourceType.CONTACT and ReadSourceType.PROFILE if not set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :personFields => String.t(),
          :photoBytes => String.t(),
          :sources => list(String.t())
        }

  field(:personFields)
  field(:photoBytes)
  field(:sources, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.UpdateContactPhotoRequest do
  def decode(value, options) do
    GoogleApi.People.V1.Model.UpdateContactPhotoRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.UpdateContactPhotoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
