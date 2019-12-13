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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeNote do
  @moduledoc """
  An Upgrade Note represents a potential upgrade of a package to a given
  version. For each package version combination (i.e. bash 4.0, bash 4.1,
  bash 4.1.2), there will be a Upgrade Note.

  ## Attributes

  *   `distributions` (*type:* `list(GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution.t)`, *default:* `nil`) - Metadata about the upgrade for each specific operating system.
  *   `package` (*type:* `String.t`, *default:* `nil`) - Required - The package this Upgrade is for.
  *   `version` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t`, *default:* `nil`) - Required - The version of the package in machine + human readable form.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distributions =>
            list(GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution.t()),
          :package => String.t(),
          :version => GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t()
        }

  field(:distributions,
    as: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeDistribution,
    type: :list
  )

  field(:package)
  field(:version, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeNote do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeNote.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.UpgradeNote do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
