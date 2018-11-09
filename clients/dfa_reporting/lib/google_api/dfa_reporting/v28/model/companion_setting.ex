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

defmodule GoogleApi.DFAReporting.V28.Model.CompanionSetting do
  @moduledoc """
  Companion Settings

  ## Attributes

  - companionsDisabled (boolean()): Whether companions are disabled for this placement. Defaults to: `null`.
  - enabledSizes ([Size]): Whitelist of companion sizes to be served to this placement. Set this list to null or empty to serve all companion sizes. Defaults to: `null`.
  - imageOnly (boolean()): Whether to serve only static images as companions. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#companionSetting\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :companionsDisabled => any(),
          :enabledSizes => list(GoogleApi.DFAReporting.V28.Model.Size.t()),
          :imageOnly => any(),
          :kind => any()
        }

  field(:companionsDisabled)
  field(:enabledSizes, as: GoogleApi.DFAReporting.V28.Model.Size, type: :list)
  field(:imageOnly)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CompanionSetting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CompanionSetting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CompanionSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
