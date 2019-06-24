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

defmodule GoogleApi.Jobs.V2.Model.CompensationFilter do
  @moduledoc """
  Input only.

  Filter on job compensation type and amount.

  ## Attributes

  *   `includeJobsWithUnspecifiedCompensationRange` (*type:* `boolean()`, *default:* `nil`) - Optional.

      Whether to include jobs whose compensation range is unspecified.
  *   `range` (*type:* `GoogleApi.Jobs.V2.Model.CompensationRange.t`, *default:* `nil`) - Optional.

      Compensation range.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required.

      Type of filter.
  *   `units` (*type:* `list(String.t)`, *default:* `nil`) - Required.

      Specify desired `base compensation entry's`
      CompensationInfo.CompensationUnit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeJobsWithUnspecifiedCompensationRange => boolean(),
          :range => GoogleApi.Jobs.V2.Model.CompensationRange.t(),
          :type => String.t(),
          :units => list(String.t())
        }

  field(:includeJobsWithUnspecifiedCompensationRange)
  field(:range, as: GoogleApi.Jobs.V2.Model.CompensationRange)
  field(:type)
  field(:units, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CompensationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CompensationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CompensationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
