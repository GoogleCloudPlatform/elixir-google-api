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

defmodule GoogleApi.AdSense.V14.Model.UrlChannels do
  @moduledoc """


  ## Attributes

  - etag (String.t): ETag of this response for caching purposes. Defaults to `nil`.
  - items (list(GoogleApi.AdSense.V14.Model.UrlChannel.t)): The URL channels returned in this list response. Defaults to `nil`.
  - kind (String.t): Kind of list this is, in this case adsense#urlChannels. Defaults to `adsense#urlChannels`.
  - nextPageToken (String.t): Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.AdSense.V14.Model.UrlChannel.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.AdSense.V14.Model.UrlChannel, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.UrlChannels do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.UrlChannels.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.UrlChannels do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
