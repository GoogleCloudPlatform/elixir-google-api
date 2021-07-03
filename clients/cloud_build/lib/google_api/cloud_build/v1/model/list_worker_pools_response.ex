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

defmodule GoogleApi.CloudBuild.V1.Model.ListWorkerPoolsResponse do
  @moduledoc """
  Response containing existing `WorkerPools`.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through large result sets. Provide this value in a subsequent ListWorkerPoolsRequest to return the next page of results.
  *   `workerPools` (*type:* `list(GoogleApi.CloudBuild.V1.Model.WorkerPool.t)`, *default:* `nil`) - `WorkerPools` for the specified project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :workerPools => list(GoogleApi.CloudBuild.V1.Model.WorkerPool.t()) | nil
        }

  field(:nextPageToken)
  field(:workerPools, as: GoogleApi.CloudBuild.V1.Model.WorkerPool, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.ListWorkerPoolsResponse do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.ListWorkerPoolsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.ListWorkerPoolsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
