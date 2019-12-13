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

defmodule GoogleApi.DFAReporting.V34.Model.SkippableSetting do
  @moduledoc """
  Skippable Settings

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dfareporting#skippableSetting`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#skippableSetting".
  *   `progressOffset` (*type:* `GoogleApi.DFAReporting.V34.Model.VideoOffset.t`, *default:* `nil`) - Amount of time to play videos served to this placement before counting a view. Applicable when skippable is true.
  *   `skipOffset` (*type:* `GoogleApi.DFAReporting.V34.Model.VideoOffset.t`, *default:* `nil`) - Amount of time to play videos served to this placement before the skip button should appear. Applicable when skippable is true.
  *   `skippable` (*type:* `boolean()`, *default:* `nil`) - Whether the user can skip creatives served to this placement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :progressOffset => GoogleApi.DFAReporting.V34.Model.VideoOffset.t(),
          :skipOffset => GoogleApi.DFAReporting.V34.Model.VideoOffset.t(),
          :skippable => boolean()
        }

  field(:kind)
  field(:progressOffset, as: GoogleApi.DFAReporting.V34.Model.VideoOffset)
  field(:skipOffset, as: GoogleApi.DFAReporting.V34.Model.VideoOffset)
  field(:skippable)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.SkippableSetting do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.SkippableSetting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.SkippableSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
