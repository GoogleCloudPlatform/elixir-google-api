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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.CVSSv3 do
  @moduledoc """
  Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document

  ## Attributes

  *   `attackComplexity` (*type:* `String.t`, *default:* `nil`) - 
  *   `attackVector` (*type:* `String.t`, *default:* `nil`) - Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
  *   `availabilityImpact` (*type:* `String.t`, *default:* `nil`) - 
  *   `baseScore` (*type:* `number()`, *default:* `nil`) - The base score is a function of the base metric scores.
  *   `confidentialityImpact` (*type:* `String.t`, *default:* `nil`) - 
  *   `exploitabilityScore` (*type:* `number()`, *default:* `nil`) - 
  *   `impactScore` (*type:* `number()`, *default:* `nil`) - 
  *   `integrityImpact` (*type:* `String.t`, *default:* `nil`) - 
  *   `privilegesRequired` (*type:* `String.t`, *default:* `nil`) - 
  *   `scope` (*type:* `String.t`, *default:* `nil`) - 
  *   `userInteraction` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attackComplexity => String.t(),
          :attackVector => String.t(),
          :availabilityImpact => String.t(),
          :baseScore => number(),
          :confidentialityImpact => String.t(),
          :exploitabilityScore => number(),
          :impactScore => number(),
          :integrityImpact => String.t(),
          :privilegesRequired => String.t(),
          :scope => String.t(),
          :userInteraction => String.t()
        }

  field(:attackComplexity)
  field(:attackVector)
  field(:availabilityImpact)
  field(:baseScore)
  field(:confidentialityImpact)
  field(:exploitabilityScore)
  field(:impactScore)
  field(:integrityImpact)
  field(:privilegesRequired)
  field(:scope)
  field(:userInteraction)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.CVSSv3 do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.CVSSv3.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.CVSSv3 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
