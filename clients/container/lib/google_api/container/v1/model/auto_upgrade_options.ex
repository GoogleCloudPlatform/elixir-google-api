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

defmodule GoogleApi.Container.V1.Model.AutoUpgradeOptions do
  @moduledoc """
  AutoUpgradeOptions defines the set of options for the user to control how
  the Auto Upgrades will proceed.

  ## Attributes

  *   `autoUpgradeStartTime` (*type:* `String.t`, *default:* `nil`) - [Output only] This field is set when upgrades are about to commence
      with the approximate start time for the upgrades, in
      [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output only] This field is set when upgrades are about to commence
      with the description of the upgrade.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoUpgradeStartTime => String.t(),
          :description => String.t()
        }

  field(:autoUpgradeStartTime)
  field(:description)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.AutoUpgradeOptions do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.AutoUpgradeOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.AutoUpgradeOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
