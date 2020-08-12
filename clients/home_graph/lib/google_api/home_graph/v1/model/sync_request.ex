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

defmodule GoogleApi.HomeGraph.V1.Model.SyncRequest do
  @moduledoc """
  Request type for the [`Sync`](#google.home.graph.v1.HomeGraphApiService.Sync) call.

  ## Attributes

  *   `agentUserId` (*type:* `String.t`, *default:* `nil`) - Required. Third-party user ID.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Request ID used for debugging.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentUserId => String.t(),
          :requestId => String.t()
        }

  field(:agentUserId)
  field(:requestId)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.SyncRequest do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.SyncRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.SyncRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
