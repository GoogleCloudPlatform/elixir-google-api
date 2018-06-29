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

defmodule GoogleApi.People.V1.Model.Address do
  @moduledoc """
  A person&#39;s physical address. May be a P.O. box or street address. All fields are optional.

  ## Attributes

  - city (String.t): The city of the address. Defaults to: `null`.
  - country (String.t): The country of the address. Defaults to: `null`.
  - countryCode (String.t): The [ISO 3166-1 alpha-2](http://www.iso.org/iso/country_codes.htm) country code of the address. Defaults to: `null`.
  - extendedAddress (String.t): The extended address of the address; for example, the apartment number. Defaults to: `null`.
  - formattedType (String.t): The read-only type of the address translated and formatted in the viewer&#39;s account locale or the &#x60;Accept-Language&#x60; HTTP header locale. Defaults to: `null`.
  - formattedValue (String.t): The unstructured value of the address. If this is not set by the user it will be automatically constructed from structured values. Defaults to: `null`.
  - metadata (FieldMetadata): Metadata about the address. Defaults to: `null`.
  - poBox (String.t): The P.O. box of the address. Defaults to: `null`.
  - postalCode (String.t): The postal code of the address. Defaults to: `null`.
  - region (String.t): The region of the address; for example, the state or province. Defaults to: `null`.
  - streetAddress (String.t): The street address. Defaults to: `null`.
  - type (String.t): The type of the address. The type can be custom or one of these predefined values:  * &#x60;home&#x60; * &#x60;work&#x60; * &#x60;other&#x60; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :city => any(),
          :country => any(),
          :countryCode => any(),
          :extendedAddress => any(),
          :formattedType => any(),
          :formattedValue => any(),
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t(),
          :poBox => any(),
          :postalCode => any(),
          :region => any(),
          :streetAddress => any(),
          :type => any()
        }

  field(:city)
  field(:country)
  field(:countryCode)
  field(:extendedAddress)
  field(:formattedType)
  field(:formattedValue)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:poBox)
  field(:postalCode)
  field(:region)
  field(:streetAddress)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Address do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Address.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Address do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
