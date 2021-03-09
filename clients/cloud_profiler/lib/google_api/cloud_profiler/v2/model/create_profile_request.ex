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

defmodule GoogleApi.CloudProfiler.V2.Model.CreateProfileRequest do
  @moduledoc """
  CreateProfileRequest describes a profile resource online creation request. The deployment field must be populated. The profile_type specifies the list of profile types supported by the agent. The creation call will hang until a profile of one of these types needs to be collected.

  ## Attributes

  *   `deployment` (*type:* `GoogleApi.CloudProfiler.V2.Model.Deployment.t`, *default:* `nil`) - Deployment details.
  *   `profileType` (*type:* `list(String.t)`, *default:* `nil`) - One or more profile types that the agent is capable of providing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployment => GoogleApi.CloudProfiler.V2.Model.Deployment.t() | nil,
          :profileType => list(String.t()) | nil
        }

  field(:deployment, as: GoogleApi.CloudProfiler.V2.Model.Deployment)
  field(:profileType, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudProfiler.V2.Model.CreateProfileRequest do
  def decode(value, options) do
    GoogleApi.CloudProfiler.V2.Model.CreateProfileRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudProfiler.V2.Model.CreateProfileRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
