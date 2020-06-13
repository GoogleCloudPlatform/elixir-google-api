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

defmodule GoogleApi.DisplayVideo.V1.Model.BulkEditAdvertiserAssignedTargetingOptionsRequest do
  @moduledoc """
  Request message for
  BulkEditAdvertiserAssignedTargetingOptions.

  ## Attributes

  *   `createRequests` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.CreateAssignedTargetingOptionsRequest.t)`, *default:* `nil`) - The assigned targeting options to create in batch, specified as a list of
      `CreateAssignedTargetingOptionsRequest`.
  *   `deleteRequests` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.DeleteAssignedTargetingOptionsRequest.t)`, *default:* `nil`) - The assigned targeting options to delete in batch, specified as a list of
      `DeleteAssignedTargetingOptionsRequest`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createRequests =>
            list(GoogleApi.DisplayVideo.V1.Model.CreateAssignedTargetingOptionsRequest.t()),
          :deleteRequests =>
            list(GoogleApi.DisplayVideo.V1.Model.DeleteAssignedTargetingOptionsRequest.t())
        }

  field(:createRequests,
    as: GoogleApi.DisplayVideo.V1.Model.CreateAssignedTargetingOptionsRequest,
    type: :list
  )

  field(:deleteRequests,
    as: GoogleApi.DisplayVideo.V1.Model.DeleteAssignedTargetingOptionsRequest,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.BulkEditAdvertiserAssignedTargetingOptionsRequest do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.BulkEditAdvertiserAssignedTargetingOptionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.BulkEditAdvertiserAssignedTargetingOptionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
