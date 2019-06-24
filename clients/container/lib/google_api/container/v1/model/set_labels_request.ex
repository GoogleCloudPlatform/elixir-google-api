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

defmodule GoogleApi.Container.V1.Model.SetLabelsRequest do
  @moduledoc """
  SetLabelsRequest sets the Google Cloud Platform labels on a Google Container
  Engine cluster, which will in turn set them for Google Compute Engine
  resources used by that cluster

  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the cluster.
      This field has been deprecated and replaced by the name field.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of the previous set of labels for this resource,
      used to detect conflicts. The fingerprint is initially generated by
      Kubernetes Engine and changes after every request to modify or update
      labels. You must always provide an up-to-date fingerprint hash when
      updating or changing labels. Make a <code>get()</code> request to the
      resource to get the latest fingerprint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (project, location, cluster id) of the cluster to set labels.
      Specified in the format 'projects/*/locations/*/clusters/*'.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Deprecated. The Google Developers Console [project ID or project
      number](https://developers.google.com/console/help/new/#projectnumber).
      This field has been deprecated and replaced by the name field.
  *   `resourceLabels` (*type:* `map()`, *default:* `nil`) - The labels to set for that cluster.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Deprecated. The name of the Google Compute Engine
      [zone](/compute/docs/zones#available) in which the cluster
      resides.
      This field has been deprecated and replaced by the name field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t(),
          :labelFingerprint => String.t(),
          :name => String.t(),
          :projectId => String.t(),
          :resourceLabels => map(),
          :zone => String.t()
        }

  field(:clusterId)
  field(:labelFingerprint)
  field(:name)
  field(:projectId)
  field(:resourceLabels, type: :map)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SetLabelsRequest do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SetLabelsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SetLabelsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
