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

defmodule GoogleApi.ServiceManagement.V1.Model.QuotaLimit do
  @moduledoc """
  &#x60;QuotaLimit&#x60; defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a &#x60;QuotaGroup&#x60;.

  ## Attributes

  - defaultLimit (String.t): Default number of tokens that can be consumed during the specified duration. This is the number of tokens assigned when a client application developer activates the service for his/her project.  Specifying a value of 0 will block all requests. This can be used if you are provisioning quota to selected consumers and blocking others. Similarly, a value of -1 will indicate an unlimited quota. No other negative values are allowed.  Used by group-based quotas only. Defaults to: `null`.
  - description (String.t): Optional. User-visible, extended description for this quota limit. Should be used only when more context is needed to understand this limit than provided by the limit&#39;s display name (see: &#x60;display_name&#x60;). Defaults to: `null`.
  - displayName (String.t): User-visible display name for this limit. Optional. If not set, the UI will provide a default display name based on the quota configuration. This field can be used to override the default display name generated from the configuration. Defaults to: `null`.
  - duration (String.t): Duration of this limit in textual notation. Example: \&quot;100s\&quot;, \&quot;24h\&quot;, \&quot;1d\&quot;. For duration longer than a day, only multiple of days is supported. We support only \&quot;100s\&quot; and \&quot;1d\&quot; for now. Additional support will be added in the future. \&quot;0\&quot; indicates indefinite duration.  Used by group-based quotas only. Defaults to: `null`.
  - freeTier (String.t): Free tier value displayed in the Developers Console for this limit. The free tier is the number of tokens that will be subtracted from the billed amount when billing is enabled. This field can only be set on a limit with duration \&quot;1d\&quot;, in a billable group; it is invalid on any other limit. If this field is not set, it defaults to 0, indicating that there is no free tier for this service.  Used by group-based quotas only. Defaults to: `null`.
  - maxLimit (String.t): Maximum number of tokens that can be consumed during the specified duration. Client application developers can override the default limit up to this maximum. If specified, this value cannot be set to a value less than the default limit. If not specified, it is set to the default limit.  To allow clients to apply overrides with no upper bound, set this to -1, indicating unlimited maximum quota.  Used by group-based quotas only. Defaults to: `null`.
  - metric (String.t): The name of the metric this quota limit applies to. The quota limits with the same metric will be checked together during runtime. The metric must be defined within the service config. Defaults to: `null`.
  - name (String.t): Name of the quota limit.  The name must be provided, and it must be unique within the service. The name can only include alphanumeric characters as well as &#39;-&#39;.  The maximum length of the limit name is 64 characters. Defaults to: `null`.
  - unit (String.t): Specify the unit of the quota limit. It uses the same syntax as Metric.unit. The supported unit kinds are determined by the quota backend system.  Here are some examples: * \&quot;1/min/{project}\&quot; for quota per minute per project.  Note: the order of unit components is insignificant. The \&quot;1\&quot; at the beginning is required to follow the metric unit syntax. Defaults to: `null`.
  - values (%{optional(String.t) &#x3D;&gt; String.t}): Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultLimit => any(),
          :description => any(),
          :displayName => any(),
          :duration => any(),
          :freeTier => any(),
          :maxLimit => any(),
          :metric => any(),
          :name => any(),
          :unit => any(),
          :values => map()
        }

  field(:defaultLimit)
  field(:description)
  field(:displayName)
  field(:duration)
  field(:freeTier)
  field(:maxLimit)
  field(:metric)
  field(:name)
  field(:unit)
  field(:values, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.QuotaLimit do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.QuotaLimit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.QuotaLimit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
