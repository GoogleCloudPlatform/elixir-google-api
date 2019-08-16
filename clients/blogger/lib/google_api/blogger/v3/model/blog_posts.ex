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

defmodule GoogleApi.Blogger.V3.Model.BlogPosts do
  @moduledoc """
  The container of posts in this blog.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Blogger.V3.Model.Post.t)`, *default:* `nil`) - The List of Posts for this Blog.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URL of the container for posts in this blog.
  *   `totalItems` (*type:* `integer()`, *default:* `nil`) - The count of posts in this blog.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Blogger.V3.Model.Post.t()),
          :selfLink => String.t(),
          :totalItems => integer()
        }

  field(:items, as: GoogleApi.Blogger.V3.Model.Post, type: :list)
  field(:selfLink)
  field(:totalItems)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.BlogPosts do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.BlogPosts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.BlogPosts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
