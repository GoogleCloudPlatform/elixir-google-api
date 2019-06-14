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

defmodule GoogleApi.Slides.V1.Model.UpdateVideoPropertiesRequest do
  @moduledoc """
  Update the properties of a Video.

  ## Attributes

  - fields (String.t): The fields that should be updated.

  At least one field must be specified. The root `videoProperties` is
  implied and should not be specified. A single `"*"` can be used as
  short-hand for listing every field.

  For example to update the video outline color, set `fields` to
  `"outline.outlineFill.solidFill.color"`.

  To reset a property to its default value, include its field name in the
  field mask but leave the field itself unset. Defaults to `nil`.
  - objectId (String.t): The object ID of the video the updates are applied to. Defaults to `nil`.
  - videoProperties (GoogleApi.Slides.V1.Model.VideoProperties.t): The video properties to update. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t(),
          :objectId => String.t(),
          :videoProperties => GoogleApi.Slides.V1.Model.VideoProperties.t()
        }

  field(:fields)
  field(:objectId)
  field(:videoProperties, as: GoogleApi.Slides.V1.Model.VideoProperties)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.UpdateVideoPropertiesRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.UpdateVideoPropertiesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.UpdateVideoPropertiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
