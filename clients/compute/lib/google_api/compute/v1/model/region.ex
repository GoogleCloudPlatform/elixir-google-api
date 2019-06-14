# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.Region do
  @moduledoc """
  Represents a Region resource.

  A region is a geographical area where a resource is located. For more information, read Regions and Zones. (== resource_for beta.regions ==) (== resource_for v1.regions ==)

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to `nil`.
  - deprecated (GoogleApi.Compute.V1.Model.DeprecationStatus.t): [Output Only] The deprecation status associated with this region. Defaults to `nil`.
  - description (String.t): [Output Only] Textual description of the resource. Defaults to `nil`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to `nil`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#region for regions. Defaults to `compute#region`.
  - name (String.t): [Output Only] Name of the resource. Defaults to `nil`.
  - quotas (list(GoogleApi.Compute.V1.Model.Quota.t)): [Output Only] Quotas assigned to this region. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to `nil`.
  - status (String.t): [Output Only] Status of the region, either UP or DOWN. Defaults to `nil`.
  - zones (list(String.t)): [Output Only] A list of zones available in this region, in the form of resource URLs. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :deprecated => GoogleApi.Compute.V1.Model.DeprecationStatus.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :quotas => list(GoogleApi.Compute.V1.Model.Quota.t()),
          :selfLink => String.t(),
          :status => String.t(),
          :zones => list(String.t())
        }

  field(:creationTimestamp)
  field(:deprecated, as: GoogleApi.Compute.V1.Model.DeprecationStatus)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:quotas, as: GoogleApi.Compute.V1.Model.Quota, type: :list)
  field(:selfLink)
  field(:status)
  field(:zones, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Region do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Region.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Region do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
