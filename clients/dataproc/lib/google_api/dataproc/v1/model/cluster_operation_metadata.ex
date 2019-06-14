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

defmodule GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  @moduledoc """
  Metadata describing the operation.

  ## Attributes

  - clusterName (String.t): Output only. Name of the cluster for the operation. Defaults to `nil`.
  - clusterUuid (String.t): Output only. Cluster UUID for the operation. Defaults to `nil`.
  - description (String.t): Output only. Short description of operation. Defaults to `nil`.
  - labels (map()): Output only. Labels associated with the operation Defaults to `nil`.
  - operationType (String.t): Output only. The operation type. Defaults to `nil`.
  - status (GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t): Output only. Current operation status. Defaults to `nil`.
  - statusHistory (list(GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t)): Output only. The previous operation status. Defaults to `nil`.
  - warnings (list(String.t)): Output only. Errors encountered during operation execution. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterName => String.t(),
          :clusterUuid => String.t(),
          :description => String.t(),
          :labels => map(),
          :operationType => String.t(),
          :status => GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t(),
          :statusHistory => list(GoogleApi.Dataproc.V1.Model.ClusterOperationStatus.t()),
          :warnings => list(String.t())
        }

  field(:clusterName)
  field(:clusterUuid)
  field(:description)
  field(:labels, type: :map)
  field(:operationType)
  field(:status, as: GoogleApi.Dataproc.V1.Model.ClusterOperationStatus)
  field(:statusHistory, as: GoogleApi.Dataproc.V1.Model.ClusterOperationStatus, type: :list)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
