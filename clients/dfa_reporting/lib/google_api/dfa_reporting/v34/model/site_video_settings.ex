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

defmodule GoogleApi.DFAReporting.V34.Model.SiteVideoSettings do
  @moduledoc """
  Video Settings

  ## Attributes

  *   `companionSettings` (*type:* `GoogleApi.DFAReporting.V34.Model.SiteCompanionSetting.t`, *default:* `nil`) - Settings for the companion creatives of video creatives served to this site.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#siteVideoSettings`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#siteVideoSettings".
  *   `orientation` (*type:* `String.t`, *default:* `nil`) - Orientation of a site template used for video. This will act as default for new placements created under this site.
  *   `skippableSettings` (*type:* `GoogleApi.DFAReporting.V34.Model.SiteSkippableSetting.t`, *default:* `nil`) - Settings for the skippability of video creatives served to this site. This will act as default for new placements created under this site.
  *   `transcodeSettings` (*type:* `GoogleApi.DFAReporting.V34.Model.SiteTranscodeSetting.t`, *default:* `nil`) - Settings for the transcodes of video creatives served to this site. This will act as default for new placements created under this site.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :companionSettings => GoogleApi.DFAReporting.V34.Model.SiteCompanionSetting.t(),
          :kind => String.t(),
          :orientation => String.t(),
          :skippableSettings => GoogleApi.DFAReporting.V34.Model.SiteSkippableSetting.t(),
          :transcodeSettings => GoogleApi.DFAReporting.V34.Model.SiteTranscodeSetting.t()
        }

  field(:companionSettings, as: GoogleApi.DFAReporting.V34.Model.SiteCompanionSetting)
  field(:kind)
  field(:orientation)
  field(:skippableSettings, as: GoogleApi.DFAReporting.V34.Model.SiteSkippableSetting)
  field(:transcodeSettings, as: GoogleApi.DFAReporting.V34.Model.SiteTranscodeSetting)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.SiteVideoSettings do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.SiteVideoSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.SiteVideoSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
