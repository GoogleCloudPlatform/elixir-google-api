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

defmodule GoogleApi.Compute.V1.Model.BackendBucket do
  @moduledoc """
  A BackendBucket resource. This resource defines a Cloud Storage bucket.

  ## Attributes

  - bucketName (String.t): Cloud Storage bucket name. Defaults to: `null`.
  - cdnPolicy (BackendBucketCdnPolicy): Cloud CDN Coniguration for this BackendBucket. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional textual description of the resource; provided by the client when the resource is created. Defaults to: `null`.
  - enableCdn (boolean()): If true, enable Cloud CDN for this BackendBucket. Defaults to: `null`.
  - id (String.t): [Output Only] Unique identifier for the resource; defined by the server. Defaults to: `null`.
  - kind (String.t): Type of the resource. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => any(),
          :cdnPolicy => GoogleApi.Compute.V1.Model.BackendBucketCdnPolicy.t(),
          :creationTimestamp => any(),
          :description => any(),
          :enableCdn => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :selfLink => any()
        }

  field(:bucketName)
  field(:cdnPolicy, as: GoogleApi.Compute.V1.Model.BackendBucketCdnPolicy)
  field(:creationTimestamp)
  field(:description)
  field(:enableCdn)
  field(:id)
  field(:kind)
  field(:name)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendBucket do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
