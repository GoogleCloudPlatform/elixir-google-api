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

defmodule GoogleApi.Compute.V1.Model.HttpsHealthCheck do
  @moduledoc """
  An HttpsHealthCheck resource. This resource defines a template for how individual instances should be checked for health, via HTTPS.

  ## Attributes

  - host (String.t): The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used. Defaults to: `null`.
  - checkIntervalSec (integer()): How often (in seconds) to send a health check. The default value is 5 seconds. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - healthyThreshold (integer()): A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): Type of the resource. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - port (integer()): The TCP port number for the HTTPS health check request. The default value is 443. Defaults to: `null`.
  - requestPath (String.t): The request path of the HTTPS health check request. The default value is \&quot;/\&quot;. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - timeoutSec (integer()): How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have a greater value than checkIntervalSec. Defaults to: `null`.
  - unhealthyThreshold (integer()): A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => any(),
          :checkIntervalSec => any(),
          :creationTimestamp => any(),
          :description => any(),
          :healthyThreshold => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :port => any(),
          :requestPath => any(),
          :selfLink => any(),
          :timeoutSec => any(),
          :unhealthyThreshold => any()
        }

  field(:host)
  field(:checkIntervalSec)
  field(:creationTimestamp)
  field(:description)
  field(:healthyThreshold)
  field(:id)
  field(:kind)
  field(:name)
  field(:port)
  field(:requestPath)
  field(:selfLink)
  field(:timeoutSec)
  field(:unhealthyThreshold)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpsHealthCheck do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpsHealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpsHealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
