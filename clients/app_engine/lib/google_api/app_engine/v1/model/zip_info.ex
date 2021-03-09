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

defmodule GoogleApi.AppEngine.V1.Model.ZipInfo do
  @moduledoc """
  The zip file information for a zip deployment.

  ## Attributes

  *   `filesCount` (*type:* `integer()`, *default:* `nil`) - An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.
  *   `sourceUrl` (*type:* `String.t`, *default:* `nil`) - URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filesCount => integer() | nil,
          :sourceUrl => String.t() | nil
        }

  field(:filesCount)
  field(:sourceUrl)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ZipInfo do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ZipInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ZipInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
