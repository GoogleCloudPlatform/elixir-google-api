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

defmodule GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize do
  @moduledoc """
  The URL-level breakdown for the download size.

  ## Attributes

  *   `downloadSizeKb` (*type:* `integer()`, *default:* `nil`) - Download size of the URL in kilobytes.
  *   `normalizedUrl` (*type:* `String.t`, *default:* `nil`) - The normalized URL with query parameters and fragment removed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :downloadSizeKb => integer(),
          :normalizedUrl => String.t()
        }

  field(:downloadSizeKb)
  field(:normalizedUrl)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.UrlDownloadSize do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
