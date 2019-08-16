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

defmodule GoogleApi.Blogger.V3.Model.CommentList do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of the response.
  *   `items` (*type:* `list(GoogleApi.Blogger.V3.Model.Comment.t)`, *default:* `nil`) - The List of Comments for a Post.
  *   `kind` (*type:* `String.t`, *default:* `blogger#commentList`) - The kind of this entry. Always blogger#commentList
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to fetch the next page, if one exists.
  *   `prevPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to fetch the previous page, if one exists.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.Blogger.V3.Model.Comment.t()),
          :kind => String.t(),
          :nextPageToken => String.t(),
          :prevPageToken => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.Blogger.V3.Model.Comment, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:prevPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.CommentList do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.CommentList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.CommentList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
