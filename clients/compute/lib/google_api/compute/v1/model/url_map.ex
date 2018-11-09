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

defmodule GoogleApi.Compute.V1.Model.UrlMap do
  @moduledoc """
  A UrlMap resource. This resource defines the mapping from URL to the BackendService resource, based on the \&quot;longest-match\&quot; of the URL&#39;s host and path.

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - defaultService (String.t): The URL of the backendService resource if none of the hostRules match. Use defaultService instead of defaultRouteAction when simple routing to a backendService is desired and other advanced capabilities like traffic splitting and rewrites are not required. Only one of defaultService, defaultRouteAction or defaultUrlRedirect should must be set. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - fingerprint (binary()): Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap.  To see the latest fingerprint, make a get() request to retrieve a UrlMap. Defaults to: `null`.
  - hostRules ([HostRule]): The list of HostRules to use against the URL. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#urlMaps for url maps. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - pathMatchers ([PathMatcher]): The list of named PathMatchers to use against the URL. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - tests ([UrlMapTest]): The list of expected URL mapping tests. Request to update this UrlMap will succeed only if all of the test cases pass. You can specify a maximum of 100 tests per UrlMap. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :defaultService => any(),
          :description => any(),
          :fingerprint => any(),
          :hostRules => list(GoogleApi.Compute.V1.Model.HostRule.t()),
          :id => any(),
          :kind => any(),
          :name => any(),
          :pathMatchers => list(GoogleApi.Compute.V1.Model.PathMatcher.t()),
          :selfLink => any(),
          :tests => list(GoogleApi.Compute.V1.Model.UrlMapTest.t())
        }

  field(:creationTimestamp)
  field(:defaultService)
  field(:description)
  field(:fingerprint)
  field(:hostRules, as: GoogleApi.Compute.V1.Model.HostRule, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:pathMatchers, as: GoogleApi.Compute.V1.Model.PathMatcher, type: :list)
  field(:selfLink)
  field(:tests, as: GoogleApi.Compute.V1.Model.UrlMapTest, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UrlMap do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UrlMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UrlMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
