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

defmodule GoogleApi.Compute.V1.Model.SslPolicy do
  @moduledoc """
  A SSL policy specifies the server-side support for SSL features. This can be attached to a TargetHttpsProxy or a TargetSslProxy. This affects connections between clients and the HTTPS or SSL proxy load balancer. They do not affect the connection between the load balancers and the backends.

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to `nil`.
  - customFeatures (list(String.t)): A list of features enabled when the selected profile is CUSTOM. The
  - method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM. Defaults to `nil`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to `nil`.
  - enabledFeatures (list(String.t)): [Output Only] The list of features enabled in the SSL policy. Defaults to `nil`.
  - fingerprint (String.t): Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a SslPolicy. An up-to-date fingerprint must be provided in order to update the SslPolicy, otherwise the request will fail with error 412 conditionNotMet.

  To see the latest fingerprint, make a get() request to retrieve an SslPolicy. Defaults to `nil`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to `nil`.
  - kind (String.t): [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies. Defaults to `compute#sslPolicy`.
  - minTlsVersion (String.t): The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2. Defaults to `nil`.
  - name (String.t): Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to `nil`.
  - profile (String.t): Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field. Defaults to `nil`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to `nil`.
  - warnings (list(GoogleApi.Compute.V1.Model.SslPolicyWarnings.t)): [Output Only] If potential misconfigurations are detected for this SSL policy, this field will be populated with warning messages. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :customFeatures => list(String.t()),
          :description => String.t(),
          :enabledFeatures => list(String.t()),
          :fingerprint => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :minTlsVersion => String.t(),
          :name => String.t(),
          :profile => String.t(),
          :selfLink => String.t(),
          :warnings => list(GoogleApi.Compute.V1.Model.SslPolicyWarnings.t())
        }

  field(:creationTimestamp)
  field(:customFeatures, type: :list)
  field(:description)
  field(:enabledFeatures, type: :list)
  field(:fingerprint)
  field(:id)
  field(:kind)
  field(:minTlsVersion)
  field(:name)
  field(:profile)
  field(:selfLink)
  field(:warnings, as: GoogleApi.Compute.V1.Model.SslPolicyWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SslPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SslPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SslPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
