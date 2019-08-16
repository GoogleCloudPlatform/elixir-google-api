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

defmodule GoogleApi.People.V1.Model.PhoneNumber do
  @moduledoc """
  A person's phone number.

  ## Attributes

  *   `canonicalForm` (*type:* `String.t`, *default:* `nil`) - The read-only canonicalized [ITU-T
      E.164](https://law.resource.org/pub/us/cfr/ibr/004/itu-t.E.164.1.2008.pdf)
      form of the phone number.
  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - The read-only type of the phone number translated and formatted in the
      viewer's account locale or the `Accept-Language` HTTP header locale.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the phone number.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the phone number. The type can be custom or one of these
      predefined values:

      * `home`
      * `work`
      * `mobile`
      * `homeFax`
      * `workFax`
      * `otherFax`
      * `pager`
      * `workMobile`
      * `workPager`
      * `main`
      * `googleVoice`
      * `other`
  *   `value` (*type:* `String.t`, *default:* `nil`) - The phone number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalForm => String.t(),
          :formattedType => String.t(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :type => String.t(),
          :value => String.t()
        }

  field(:canonicalForm)
  field(:formattedType)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.PhoneNumber do
  def decode(value, options) do
    GoogleApi.People.V1.Model.PhoneNumber.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.PhoneNumber do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
