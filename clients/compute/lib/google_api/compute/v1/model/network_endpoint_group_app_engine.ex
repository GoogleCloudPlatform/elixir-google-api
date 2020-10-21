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

defmodule GoogleApi.Compute.V1.Model.NetworkEndpointGroupAppEngine do
  @moduledoc """
  Configuration for an App Engine network endpoint group (NEG). The service is optional, may be provided explicitly or in the URL mask. The version is optional and can only be provided explicitly or in the URL mask when service is present.

  Note: App Engine service must be in the same project and located in the same region as the Serverless NEG.

  ## Attributes

  *   `service` (*type:* `String.t`, *default:* `nil`) - Optional serving service.

      The service name is case-sensitive and must be 1-63 characters long.

      Example value: "default", "my-service".
  *   `urlMask` (*type:* `String.t`, *default:* `nil`) - A template to parse service and version fields from a request URL. URL mask allows for routing to multiple App Engine services without having to create multiple Network Endpoint Groups and backend services.

      For example, the request URLs "foo1-dot-appname.appspot.com/v1" and "foo1-dot-appname.appspot.com/v2" can be backed by the same Serverless NEG with URL mask "-dot-appname.appspot.com/". The URL mask will parse them to { service = "foo1", version = "v1" } and { service = "foo1", version = "v2" } respectively.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Optional serving version.

      The version name is case-sensitive and must be 1-100 characters long.

      Example value: "v1", "v2".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :service => String.t(),
          :urlMask => String.t(),
          :version => String.t()
        }

  field(:service)
  field(:urlMask)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroupAppEngine do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEndpointGroupAppEngine.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointGroupAppEngine do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
