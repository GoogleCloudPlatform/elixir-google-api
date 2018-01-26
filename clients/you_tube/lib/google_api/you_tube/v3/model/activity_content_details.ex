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

defmodule GoogleApi.YouTube.V3.Model.ActivityContentDetails do
  @moduledoc """
  Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc.

  ## Attributes

  - bulletin (ActivityContentDetailsBulletin): The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin. Defaults to: `null`.
  - channelItem (ActivityContentDetailsChannelItem): The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem. Defaults to: `null`.
  - comment (ActivityContentDetailsComment): The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment. Defaults to: `null`.
  - favorite (ActivityContentDetailsFavorite): The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite. Defaults to: `null`.
  - like (ActivityContentDetailsLike): The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like. Defaults to: `null`.
  - playlistItem (ActivityContentDetailsPlaylistItem): The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem. Defaults to: `null`.
  - promotedItem (ActivityContentDetailsPromotedItem): The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem. Defaults to: `null`.
  - recommendation (ActivityContentDetailsRecommendation): The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation. Defaults to: `null`.
  - social (ActivityContentDetailsSocial): The social object contains details about a social network post. This property is only present if the snippet.type is social. Defaults to: `null`.
  - subscription (ActivityContentDetailsSubscription): The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription. Defaults to: `null`.
  - upload (ActivityContentDetailsUpload): The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload. Defaults to: `null`.
  """

  defstruct [
    :bulletin,
    :channelItem,
    :comment,
    :favorite,
    :like,
    :playlistItem,
    :promotedItem,
    :recommendation,
    :social,
    :subscription,
    :upload
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetails do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :bulletin,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsBulletin,
      options
    )
    |> deserialize(
      :channelItem,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsChannelItem,
      options
    )
    |> deserialize(
      :comment,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsComment,
      options
    )
    |> deserialize(
      :favorite,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsFavorite,
      options
    )
    |> deserialize(:like, :struct, GoogleApi.YouTube.V3.Model.ActivityContentDetailsLike, options)
    |> deserialize(
      :playlistItem,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsPlaylistItem,
      options
    )
    |> deserialize(
      :promotedItem,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsPromotedItem,
      options
    )
    |> deserialize(
      :recommendation,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsRecommendation,
      options
    )
    |> deserialize(
      :social,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsSocial,
      options
    )
    |> deserialize(
      :subscription,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsSubscription,
      options
    )
    |> deserialize(
      :upload,
      :struct,
      GoogleApi.YouTube.V3.Model.ActivityContentDetailsUpload,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ActivityContentDetails do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
