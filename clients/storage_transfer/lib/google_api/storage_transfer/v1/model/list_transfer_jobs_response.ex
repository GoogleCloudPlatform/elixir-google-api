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

defmodule GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse do
  @moduledoc """
  Response from ListTransferJobs.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The list next page token.
  *   `transferJobs` (*type:* `list(GoogleApi.StorageTransfer.V1.Model.TransferJob.t)`, *default:* `nil`) - A list of transfer jobs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :transferJobs => list(GoogleApi.StorageTransfer.V1.Model.TransferJob.t()) | nil
        }

  field(:nextPageToken)
  field(:transferJobs, as: GoogleApi.StorageTransfer.V1.Model.TransferJob, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.ListTransferJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
