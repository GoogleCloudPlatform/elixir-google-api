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

defmodule GoogleApi.Jobs.V3.Model.CustomAttributeHistogramResult do
  @moduledoc """
  Output only. Custom attribute histogram result.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Stores the key of custom attribute the histogram is performed on.
  *   `longValueHistogramResult` (*type:* `GoogleApi.Jobs.V3.Model.NumericBucketingResult.t`, *default:* `nil`) - Stores bucketed histogram counting result or min/max values for custom attribute long values associated with `key`.
  *   `stringValueHistogramResult` (*type:* `map()`, *default:* `nil`) - Stores a map from the values of string custom field associated with `key` to the number of jobs with that value in this histogram result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :longValueHistogramResult => GoogleApi.Jobs.V3.Model.NumericBucketingResult.t() | nil,
          :stringValueHistogramResult => map() | nil
        }

  field(:key)
  field(:longValueHistogramResult, as: GoogleApi.Jobs.V3.Model.NumericBucketingResult)
  field(:stringValueHistogramResult, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.CustomAttributeHistogramResult do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.CustomAttributeHistogramResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.CustomAttributeHistogramResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
