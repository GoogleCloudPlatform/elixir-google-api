# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  @moduledoc """


  ## Attributes

  - fingerprint (binary()): The fingerprint of the named ports information for this instance group. Use this optional property to prevent conflicts when multiple users change the named ports settings concurrently. Obtain the fingerprint with the instanceGroups.get method. Then, include the fingerprint in your request to ensure that you do not overwrite changes that were applied from another concurrent request. Defaults to: `null`.
  - namedPorts ([NamedPort]): The list of named ports to set for this instance group. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fingerprint => any(),
          :namedPorts => list(GoogleApi.Compute.V1.Model.NamedPort.t())
        }

  field(:fingerprint)
  field(:namedPorts, as: GoogleApi.Compute.V1.Model.NamedPort, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RegionInstanceGroupsSetNamedPortsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
