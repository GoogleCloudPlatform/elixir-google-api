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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Key do
  @moduledoc """
  A unique identifier for a Datastore entity. If a key&#39;s partition ID or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts.

  ## Attributes

  - partitionId (GooglePrivacyDlpV2beta1PartitionId): Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Queries are scoped to a single partition. Defaults to: `null`.
  - path (List[GooglePrivacyDlpV2beta1PathElement]): The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a _root entity_, the second element identifies a _child_ of the root entity, the third element identifies a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element&#39;s _ancestors_.  A path can never be empty, and a path can have at most 100 elements. Defaults to: `null`.
  """

  defstruct [
    :"partitionId",
    :"path"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Key do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"partitionId", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1PartitionId, options)
    |> deserialize(:"path", :list, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1PathElement, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Key do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

