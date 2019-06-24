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

defmodule GoogleApi.YouTube.V3.Model.VideoSuggestionsTagSuggestion do
  @moduledoc """
  A single tag suggestion with it's relevance information.

  ## Attributes

  *   `categoryRestricts` (*type:* `list(String.t)`, *default:* `nil`) - A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The keyword tag suggested for the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoryRestricts => list(String.t()),
          :tag => String.t()
        }

  field(:categoryRestricts, type: :list)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoSuggestionsTagSuggestion do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoSuggestionsTagSuggestion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoSuggestionsTagSuggestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
