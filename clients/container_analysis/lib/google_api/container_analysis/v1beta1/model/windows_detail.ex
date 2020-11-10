# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.WindowsDetail do
  @moduledoc """


  ## Attributes

  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - Required. The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the vulnerability.
  *   `fixingKbs` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.KnowledgeBase.t)`, *default:* `nil`) - Required. The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed kb's presence is considered a fix.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the vulnerability.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpeUri => String.t(),
          :description => String.t(),
          :fixingKbs => list(GoogleApi.ContainerAnalysis.V1beta1.Model.KnowledgeBase.t()),
          :name => String.t()
        }

  field(:cpeUri)
  field(:description)
  field(:fixingKbs, as: GoogleApi.ContainerAnalysis.V1beta1.Model.KnowledgeBase, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.WindowsDetail do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.WindowsDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.WindowsDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
