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

defmodule GoogleApi.YouTube.V3.Model.Video do
  @moduledoc """
  A video resource represents a YouTube video.

  ## Attributes

  - ageGating (VideoAgeGating): Age restriction details related to a video. This data can only be retrieved by the video owner. Defaults to: `null`.
  - contentDetails (VideoContentDetails): The contentDetails object contains information about the video content, including the length of the video and its aspect ratio. Defaults to: `null`.
  - etag (String.t): Etag of this resource. Defaults to: `null`.
  - fileDetails (VideoFileDetails): The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file&#39;s resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner. Defaults to: `null`.
  - id (String.t): The ID that YouTube uses to uniquely identify the video. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;youtube#video\&quot;. Defaults to: `null`.
  - liveStreamingDetails (VideoLiveStreamingDetails): The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast. Defaults to: `null`.
  - localizations (%{optional(String.t) &#x3D;&gt; VideoLocalization}): List with all localizations. Defaults to: `null`.
  - monetizationDetails (VideoMonetizationDetails): The monetizationDetails object encapsulates information about the monetization status of the video. Defaults to: `null`.
  - player (VideoPlayer): The player object contains information that you would use to play the video in an embedded player. Defaults to: `null`.
  - processingDetails (VideoProcessingDetails): The processingProgress object encapsulates information about YouTube&#39;s progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video.  The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner. Defaults to: `null`.
  - projectDetails (VideoProjectDetails): The projectDetails object contains information about the project specific video metadata. Defaults to: `null`.
  - recordingDetails (VideoRecordingDetails): The recordingDetails object encapsulates information about the location, date and address where the video was recorded. Defaults to: `null`.
  - snippet (VideoSnippet): The snippet object contains basic details about the video, such as its title, description, and category. Defaults to: `null`.
  - statistics (VideoStatistics): The statistics object contains statistics about the video. Defaults to: `null`.
  - status (VideoStatus): The status object contains information about the video&#39;s uploading, processing, and privacy statuses. Defaults to: `null`.
  - suggestions (VideoSuggestions): The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner. Defaults to: `null`.
  - topicDetails (VideoTopicDetails): The topicDetails object encapsulates information about Freebase topics associated with the video. Defaults to: `null`.
  """

  defstruct [
    :"ageGating",
    :"contentDetails",
    :"etag",
    :"fileDetails",
    :"id",
    :"kind",
    :"liveStreamingDetails",
    :"localizations",
    :"monetizationDetails",
    :"player",
    :"processingDetails",
    :"projectDetails",
    :"recordingDetails",
    :"snippet",
    :"statistics",
    :"status",
    :"suggestions",
    :"topicDetails"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Video do
  import GoogleApi.YouTube.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ageGating", :struct, GoogleApi.YouTube.V3.Model.VideoAgeGating, options)
    |> deserialize(:"contentDetails", :struct, GoogleApi.YouTube.V3.Model.VideoContentDetails, options)
    |> deserialize(:"fileDetails", :struct, GoogleApi.YouTube.V3.Model.VideoFileDetails, options)
    |> deserialize(:"liveStreamingDetails", :struct, GoogleApi.YouTube.V3.Model.VideoLiveStreamingDetails, options)
    |> deserialize(:"localizations", :map, GoogleApi.YouTube.V3.Model.VideoLocalization, options)
    |> deserialize(:"monetizationDetails", :struct, GoogleApi.YouTube.V3.Model.VideoMonetizationDetails, options)
    |> deserialize(:"player", :struct, GoogleApi.YouTube.V3.Model.VideoPlayer, options)
    |> deserialize(:"processingDetails", :struct, GoogleApi.YouTube.V3.Model.VideoProcessingDetails, options)
    |> deserialize(:"projectDetails", :struct, GoogleApi.YouTube.V3.Model.VideoProjectDetails, options)
    |> deserialize(:"recordingDetails", :struct, GoogleApi.YouTube.V3.Model.VideoRecordingDetails, options)
    |> deserialize(:"snippet", :struct, GoogleApi.YouTube.V3.Model.VideoSnippet, options)
    |> deserialize(:"statistics", :struct, GoogleApi.YouTube.V3.Model.VideoStatistics, options)
    |> deserialize(:"status", :struct, GoogleApi.YouTube.V3.Model.VideoStatus, options)
    |> deserialize(:"suggestions", :struct, GoogleApi.YouTube.V3.Model.VideoSuggestions, options)
    |> deserialize(:"topicDetails", :struct, GoogleApi.YouTube.V3.Model.VideoTopicDetails, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.Video do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end

