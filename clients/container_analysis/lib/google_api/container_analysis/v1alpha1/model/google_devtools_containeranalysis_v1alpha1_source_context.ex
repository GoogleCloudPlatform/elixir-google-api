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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1SourceContext do
  @moduledoc """
  A SourceContext is a reference to a tree of files. A SourceContext together
  with a path point to a unique revision of a single file or directory.

  ## Attributes

  *   `cloudRepo` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.t`, *default:* `nil`) - A SourceContext referring to a revision in a Google Cloud Source Repo.
  *   `gerrit` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.t`, *default:* `nil`) - A SourceContext referring to a Gerrit project.
  *   `git` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.t`, *default:* `nil`) - A SourceContext referring to any third party Git repo (e.g., GitHub).
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels with user defined metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudRepo =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext.t(),
          :gerrit =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext.t(),
          :git =>
            GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext.t(),
          :labels => map()
        }

  field(:cloudRepo,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
  )

  field(:gerrit,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext
  )

  field(:git,
    as:
      GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext
  )

  field(:labels, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1SourceContext do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1SourceContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.GoogleDevtoolsContaineranalysisV1alpha1SourceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
