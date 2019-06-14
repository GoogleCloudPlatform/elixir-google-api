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

defmodule GoogleApi.Compute.V1.Model.Autoscaler do
  @moduledoc """
  Represents an Autoscaler resource.



  Use autoscalers to automatically add or delete instances from a managed instance group according to your defined autoscaling policy. For more information, read Autoscaling Groups of Instances.

  For zonal managed instance groups resource, use the autoscaler resource.

  For regional managed instance groups, use the regionAutoscalers resource. (== resource_for beta.autoscalers ==) (== resource_for v1.autoscalers ==) (== resource_for beta.regionAutoscalers ==) (== resource_for v1.regionAutoscalers ==)

  ## Attributes

  - autoscalingPolicy (GoogleApi.Compute.V1.Model.AutoscalingPolicy.t): The configuration parameters for the autoscaling algorithm. You can define one or more of the policies for an autoscaler: cpuUtilization, customMetricUtilizations, and loadBalancingUtilization.

  If none of these are specified, the default will be to autoscale based on cpuUtilization to 0.6 or 60%. Defaults to `nil`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to `nil`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to `nil`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to `nil`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#autoscaler for autoscalers. Defaults to `compute#autoscaler`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to `nil`.
  - region (String.t): [Output Only] URL of the region where the instance group resides (for autoscalers living in regional scope). Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to `nil`.
  - status (String.t): [Output Only] The status of the autoscaler configuration. Defaults to `nil`.
  - statusDetails (list(GoogleApi.Compute.V1.Model.AutoscalerStatusDetails.t)): [Output Only] Human-readable details about the current state of the autoscaler. Read the documentation for Commonly returned status messages for examples of status messages you might encounter. Defaults to `nil`.
  - target (String.t): URL of the managed instance group that this autoscaler will scale. Defaults to `nil`.
  - zone (String.t): [Output Only] URL of the zone where the instance group resides (for autoscalers living in zonal scope). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoscalingPolicy => GoogleApi.Compute.V1.Model.AutoscalingPolicy.t(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :region => String.t(),
          :selfLink => String.t(),
          :status => String.t(),
          :statusDetails => list(GoogleApi.Compute.V1.Model.AutoscalerStatusDetails.t()),
          :target => String.t(),
          :zone => String.t()
        }

  field(:autoscalingPolicy, as: GoogleApi.Compute.V1.Model.AutoscalingPolicy)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:region)
  field(:selfLink)
  field(:status)
  field(:statusDetails, as: GoogleApi.Compute.V1.Model.AutoscalerStatusDetails, type: :list)
  field(:target)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Autoscaler do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Autoscaler.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Autoscaler do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
