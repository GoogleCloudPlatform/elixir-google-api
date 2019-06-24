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

defmodule GoogleApi.Jobs.V2.Model.CompensationHistogramResult do
  @moduledoc """
  Output only.

  Compensation based histogram result.

  ## Attributes

  *   `result` (*type:* `GoogleApi.Jobs.V2.Model.NumericBucketingResult.t`, *default:* `nil`) - Histogram result.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the request, corresponding to
      CompensationHistogramRequest.type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :result => GoogleApi.Jobs.V2.Model.NumericBucketingResult.t(),
          :type => String.t()
        }

  field(:result, as: GoogleApi.Jobs.V2.Model.NumericBucketingResult)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CompensationHistogramResult do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CompensationHistogramResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CompensationHistogramResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
