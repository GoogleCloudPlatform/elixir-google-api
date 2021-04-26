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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentOperationMetadata do
  @moduledoc """
  OS policy assignment operation metadata provided by OS policy assignment API methods that return long running operations.

  ## Attributes

  *   `apiMethod` (*type:* `String.t`, *default:* `nil`) - The OS policy assignment API method.
  *   `osPolicyAssignment` (*type:* `String.t`, *default:* `nil`) - Reference to the `OSPolicyAssignment` API resource. Format: projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}
  *   `rolloutStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Rollout start time
  *   `rolloutState` (*type:* `String.t`, *default:* `nil`) - State of the rollout
  *   `rolloutUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Rollout update time
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiMethod => String.t() | nil,
          :osPolicyAssignment => String.t() | nil,
          :rolloutStartTime => DateTime.t() | nil,
          :rolloutState => String.t() | nil,
          :rolloutUpdateTime => DateTime.t() | nil
        }

  field(:apiMethod)
  field(:osPolicyAssignment)
  field(:rolloutStartTime, as: DateTime)
  field(:rolloutState)
  field(:rolloutUpdateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentOperationMetadata do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
