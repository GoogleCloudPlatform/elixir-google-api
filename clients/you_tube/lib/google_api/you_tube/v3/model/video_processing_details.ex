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

defmodule GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  @moduledoc """
  Describes processing status and progress and availability of some other Video
  resource parts.

  ## Attributes

  *   `editorSuggestionsAvailability` (*type:* `String.t`, *default:* `nil`) - This value indicates whether video editing suggestions, which might
      improve video quality or the playback experience, are available for
      the video. You can retrieve these suggestions by requesting the
      <code>suggestions</code> part in your <code>videos.list()</code> request.
  *   `fileDetailsAvailability` (*type:* `String.t`, *default:* `nil`) - This value indicates whether file details are available for the uploaded
      video. You can retrieve a video's file details by requesting the
      <code>fileDetails</code> part in your <code>videos.list()</code> request.
  *   `processingFailureReason` (*type:* `String.t`, *default:* `nil`) - The reason that YouTube failed to process the video. This property will
      only have a value if the <code>processingStatus</code>
      property's value is <code>failed</code>.
  *   `processingIssuesAvailability` (*type:* `String.t`, *default:* `nil`) - This value indicates whether the video processing engine has generated
      suggestions that might improve YouTube's ability to process the
      the video, warnings that explain video processing problems, or
      errors that cause video processing problems. You can retrieve these
      suggestions by requesting the <code>suggestions</code> part in your
      <code>videos.list()</code> request.
  *   `processingProgress` (*type:* `GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress.t`, *default:* `nil`) - The <code>processingProgress</code> object contains information about the
      progress YouTube has made in processing the video. The values are really
      only relevant if the video's processing status is <code>processing</code>.
  *   `processingStatus` (*type:* `String.t`, *default:* `nil`) - The video's processing status. This value indicates whether YouTube was
      able to process the video or if the video is still being processed.
  *   `tagSuggestionsAvailability` (*type:* `String.t`, *default:* `nil`) - This value indicates whether keyword (tag) suggestions are available for
      the video. Tags can be added to a video's metadata to make it easier for
      other users to find the video. You can retrieve these suggestions by
      requesting the <code>suggestions</code> part in your
      <code>videos.list()</code> request.
  *   `thumbnailsAvailability` (*type:* `String.t`, *default:* `nil`) - This value indicates whether thumbnail images have been generated for
      the video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :editorSuggestionsAvailability => String.t(),
          :fileDetailsAvailability => String.t(),
          :processingFailureReason => String.t(),
          :processingIssuesAvailability => String.t(),
          :processingProgress =>
            GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress.t(),
          :processingStatus => String.t(),
          :tagSuggestionsAvailability => String.t(),
          :thumbnailsAvailability => String.t()
        }

  field(:editorSuggestionsAvailability)
  field(:fileDetailsAvailability)
  field(:processingFailureReason)
  field(:processingIssuesAvailability)

  field(:processingProgress,
    as: GoogleApi.YouTube.V3.Model.VideoProcessingDetailsProcessingProgress
  )

  field(:processingStatus)
  field(:tagSuggestionsAvailability)
  field(:thumbnailsAvailability)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoProcessingDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoProcessingDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
