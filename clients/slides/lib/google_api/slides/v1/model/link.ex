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

defmodule GoogleApi.Slides.V1.Model.Link do
  @moduledoc """
  A hypertext link.

  ## Attributes

  *   `pageObjectId` (*type:* `String.t`, *default:* `nil`) - If set, indicates this is a link to the specific page in this presentation with this ID. A page with this ID may not exist.
  *   `relativeLink` (*type:* `String.t`, *default:* `nil`) - If set, indicates this is a link to a slide in this presentation, addressed by its position.
  *   `slideIndex` (*type:* `integer()`, *default:* `nil`) - If set, indicates this is a link to the slide at this zero-based index in the presentation. There may not be a slide at this index.
  *   `url` (*type:* `String.t`, *default:* `nil`) - If set, indicates this is a link to the external web page at this URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageObjectId => String.t() | nil,
          :relativeLink => String.t() | nil,
          :slideIndex => integer() | nil,
          :url => String.t() | nil
        }

  field(:pageObjectId)
  field(:relativeLink)
  field(:slideIndex)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Link do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Link.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Link do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
