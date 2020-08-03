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

defmodule GoogleApi.YouTubeReporting.V1.Model.Report do
  @moduledoc """
  A report's metadata including the URL from which the report itself can be downloaded.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The date/time when this report was created.
  *   `downloadUrl` (*type:* `String.t`, *default:* `nil`) - The URL from which the report can be downloaded (max. 1000 characters).
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end of the time period that the report instance covers. The value is exclusive.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The server-generated ID of the report.
  *   `jobExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - The date/time when the job this report belongs to will expire/expired.
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - The ID of the job that created this report.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start of the time period that the report instance covers. The value is inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :downloadUrl => String.t(),
          :endTime => DateTime.t(),
          :id => String.t(),
          :jobExpireTime => DateTime.t(),
          :jobId => String.t(),
          :startTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:downloadUrl)
  field(:endTime, as: DateTime)
  field(:id)
  field(:jobExpireTime, as: DateTime)
  field(:jobId)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeReporting.V1.Model.Report do
  def decode(value, options) do
    GoogleApi.YouTubeReporting.V1.Model.Report.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeReporting.V1.Model.Report do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
