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

defmodule GoogleApi.YouTube.V3.Model.VideoSnippet do
  @moduledoc """
  Basic details about a video, including title, description, uploader, thumbnails and category.

  ## Attributes

  - categoryId (String.t): The YouTube video category associated with the video. Defaults to `nil`.
  - channelId (String.t): The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. Defaults to `nil`.
  - channelTitle (String.t): Channel title for the channel that the video belongs to. Defaults to `nil`.
  - defaultAudioLanguage (String.t): The default_audio_language property specifies the language spoken in the video's default audio track. Defaults to `nil`.
  - defaultLanguage (String.t): The language of the videos's default snippet. Defaults to `nil`.
  - description (String.t): The video's description. Defaults to `nil`.
  - liveBroadcastContent (String.t): Indicates if the video is an upcoming/active live broadcast. Or it's "none" if the video is not an upcoming/active live broadcast. Defaults to `nil`.
  - localized (GoogleApi.YouTube.V3.Model.VideoLocalization.t): Localized snippet selected with the hl parameter. If no such localization exists, this field is populated with the default snippet. (Read-only) Defaults to `nil`.
  - publishedAt (DateTime.t): The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to `nil`.
  - tags (list(String.t)): A list of keyword tags associated with the video. Tags may contain spaces. Defaults to `nil`.
  - thumbnails (GoogleApi.YouTube.V3.Model.ThumbnailDetails.t): A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. Defaults to `nil`.
  - title (String.t): The video's title. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoryId => String.t(),
          :channelId => String.t(),
          :channelTitle => String.t(),
          :defaultAudioLanguage => String.t(),
          :defaultLanguage => String.t(),
          :description => String.t(),
          :liveBroadcastContent => String.t(),
          :localized => GoogleApi.YouTube.V3.Model.VideoLocalization.t(),
          :publishedAt => DateTime.t(),
          :tags => list(String.t()),
          :thumbnails => GoogleApi.YouTube.V3.Model.ThumbnailDetails.t(),
          :title => String.t()
        }

  field(:categoryId)
  field(:channelId)
  field(:channelTitle)
  field(:defaultAudioLanguage)
  field(:defaultLanguage)
  field(:description)
  field(:liveBroadcastContent)
  field(:localized, as: GoogleApi.YouTube.V3.Model.VideoLocalization)
  field(:publishedAt, as: DateTime)
  field(:tags, type: :list)
  field(:thumbnails, as: GoogleApi.YouTube.V3.Model.ThumbnailDetails)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
