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

defmodule GoogleApi.TagManager.V2.Model.Account do
  @moduledoc """
  Represents a Google Tag Manager Account.

  ## Attributes

  - accountId (String.t): The Account ID uniquely identifies the GTM Account. Defaults to `nil`.
  - fingerprint (String.t): The fingerprint of the GTM Account as computed at storage time. This value is recomputed whenever the account is modified. Defaults to `nil`.
  - name (String.t): Account display name. Defaults to `nil`.
  - path (String.t): GTM Account's API relative path. Defaults to `nil`.
  - shareData (boolean()): Whether the account shares data anonymously with Google and others. This flag enables benchmarking by sharing your data in an anonymous form. Google will remove all identifiable information about your website, combine the data with hundreds of other anonymous sites and report aggregate trends in the benchmarking service. Defaults to `nil`.
  - tagManagerUrl (String.t): Auto generated link to the tag manager UI Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :fingerprint => String.t(),
          :name => String.t(),
          :path => String.t(),
          :shareData => boolean(),
          :tagManagerUrl => String.t()
        }

  field(:accountId)
  field(:fingerprint)
  field(:name)
  field(:path)
  field(:shareData)
  field(:tagManagerUrl)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Account do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
