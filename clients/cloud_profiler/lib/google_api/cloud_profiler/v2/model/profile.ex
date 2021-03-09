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

defmodule GoogleApi.CloudProfiler.V2.Model.Profile do
  @moduledoc """
  Profile resource.

  ## Attributes

  *   `deployment` (*type:* `GoogleApi.CloudProfiler.V2.Model.Deployment.t`, *default:* `nil`) - Deployment this profile corresponds to.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Duration of the profiling session. Input (for the offline mode) or output (for the online mode). The field represents requested profiling duration. It may slightly differ from the effective profiling duration, which is recorded in the profile data, in case the profiling can't be stopped immediately (e.g. in case stopping the profiling is handled asynchronously).
  *   `labels` (*type:* `map()`, *default:* `nil`) - Input only. Labels associated to this specific profile. These labels will get merged with the deployment labels for the final data set. See documentation on deployment labels for validation rules and limits.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Opaque, server-assigned, unique ID for this profile.
  *   `profileBytes` (*type:* `String.t`, *default:* `nil`) - Input only. Profile bytes, as a gzip compressed serialized proto, the format is https://github.com/google/pprof/blob/master/proto/profile.proto.
  *   `profileType` (*type:* `String.t`, *default:* `nil`) - Type of profile. For offline mode, this must be specified when creating the profile. For online mode it is assigned and returned by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployment => GoogleApi.CloudProfiler.V2.Model.Deployment.t() | nil,
          :duration => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :profileBytes => String.t() | nil,
          :profileType => String.t() | nil
        }

  field(:deployment, as: GoogleApi.CloudProfiler.V2.Model.Deployment)
  field(:duration)
  field(:labels, type: :map)
  field(:name)
  field(:profileBytes)
  field(:profileType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudProfiler.V2.Model.Profile do
  def decode(value, options) do
    GoogleApi.CloudProfiler.V2.Model.Profile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudProfiler.V2.Model.Profile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
