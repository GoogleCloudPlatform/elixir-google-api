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

defmodule GoogleApi.AdMob.V1.Model.MediationReportSpecDimensionFilter do
  @moduledoc """
  Describes which report rows to match based on their dimension values.

  ## Attributes

  *   `dimension` (*type:* `String.t`, *default:* `nil`) - Applies the filter criterion to the specified dimension.
  *   `matchesAny` (*type:* `GoogleApi.AdMob.V1.Model.StringList.t`, *default:* `nil`) - Matches a row if its value for the specified dimension is in one of the
      values specified in this condition.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimension => String.t(),
          :matchesAny => GoogleApi.AdMob.V1.Model.StringList.t()
        }

  field(:dimension)
  field(:matchesAny, as: GoogleApi.AdMob.V1.Model.StringList)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.MediationReportSpecDimensionFilter do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.MediationReportSpecDimensionFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.MediationReportSpecDimensionFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
