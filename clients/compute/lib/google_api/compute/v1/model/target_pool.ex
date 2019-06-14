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

defmodule GoogleApi.Compute.V1.Model.TargetPool do
  @moduledoc """
  A TargetPool resource. This resource defines a pool of instances, an associated HttpHealthCheck resource, and the fallback target pool. (== resource_for beta.targetPools ==) (== resource_for v1.targetPools ==)

  ## Attributes

  - backupPool (String.t): This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1].

  backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool.

  In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy. Defaults to `nil`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to `nil`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to `nil`.
  - failoverRatio (number()): This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1].

  If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool.

  In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy. Defaults to `nil`.
  - healthChecks (list(String.t)): The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. An empty list means all member instances will be considered healthy at all times. Only HttpHealthChecks are supported. Only one health check may be specified. Defaults to `nil`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to `nil`.
  - instances (list(String.t)): A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool. Defaults to `nil`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#targetPool for target pools. Defaults to `compute#targetPool`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to `nil`.
  - region (String.t): [Output Only] URL of the region where the target pool resides. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to `nil`.
  - sessionAffinity (String.t): Session affinity option, must be one of the following values:
  NONE: Connections from the same client IP may go to any instance in the pool.
  CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy.
  CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupPool => String.t(),
          :creationTimestamp => String.t(),
          :description => String.t(),
          :failoverRatio => number(),
          :healthChecks => list(String.t()),
          :id => String.t(),
          :instances => list(String.t()),
          :kind => String.t(),
          :name => String.t(),
          :region => String.t(),
          :selfLink => String.t(),
          :sessionAffinity => String.t()
        }

  field(:backupPool)
  field(:creationTimestamp)
  field(:description)
  field(:failoverRatio)
  field(:healthChecks, type: :list)
  field(:id)
  field(:instances, type: :list)
  field(:kind)
  field(:name)
  field(:region)
  field(:selfLink)
  field(:sessionAffinity)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TargetPool do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TargetPool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TargetPool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
