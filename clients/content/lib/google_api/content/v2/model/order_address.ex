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

defmodule GoogleApi.Content.V2.Model.OrderAddress do
  @moduledoc """


  ## Attributes

  - country (String.t): CLDR country code (e.g. "US"). Defaults to `nil`.
  - fullAddress (list(String.t)): Strings representing the lines of the printed label for mailing the order, for example:
  John Smith
  1600 Amphitheatre Parkway
  Mountain View, CA, 94043
  United States Defaults to `nil`.
  - isPostOfficeBox (boolean()): Whether the address is a post office box. Defaults to `nil`.
  - locality (String.t): City, town or commune. May also include dependent localities or sublocalities (e.g. neighborhoods or suburbs). Defaults to `nil`.
  - postalCode (String.t): Postal Code or ZIP (e.g. "94043"). Defaults to `nil`.
  - recipientName (String.t): Name of the recipient. Defaults to `nil`.
  - region (String.t): Top-level administrative subdivision of the country. For example, a state like California ("CA") or a province like Quebec ("QC"). Defaults to `nil`.
  - streetAddress (list(String.t)): Street-level part of the address. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t(),
          :fullAddress => list(String.t()),
          :isPostOfficeBox => boolean(),
          :locality => String.t(),
          :postalCode => String.t(),
          :recipientName => String.t(),
          :region => String.t(),
          :streetAddress => list(String.t())
        }

  field(:country)
  field(:fullAddress, type: :list)
  field(:isPostOfficeBox)
  field(:locality)
  field(:postalCode)
  field(:recipientName)
  field(:region)
  field(:streetAddress, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderAddress do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
