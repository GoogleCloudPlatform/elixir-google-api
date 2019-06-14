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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FirstPartyMobileApplicationTargeting do
  @moduledoc """
  Represents a list of targeted and excluded mobile application IDs that
  publishers own.
  Mobile application IDs are from App Store and Google Play Store.
  Android App ID, for example, com.google.android.apps.maps, can be found in
  Google Play Store URL.
  iOS App ID (which is a number) can be found at the end of iTunes store URL.
  First party mobile applications is either included or excluded.

  ## Attributes

  - excludedAppIds (list(String.t)): A list of application IDs to be excluded. Defaults to `nil`.
  - targetedAppIds (list(String.t)): A list of application IDs to be included. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedAppIds => list(String.t()),
          :targetedAppIds => list(String.t())
        }

  field(:excludedAppIds, type: :list)
  field(:targetedAppIds, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FirstPartyMobileApplicationTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.FirstPartyMobileApplicationTargeting.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FirstPartyMobileApplicationTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
