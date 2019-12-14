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

defmodule GoogleApi.Content.V21.Model.ReturnpolicyCustomBatchResponseEntry do
  @moduledoc """


  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - The ID of the request entry to which this entry responds.
  *   `errors` (*type:* `GoogleApi.Content.V21.Model.Errors.t`, *default:* `nil`) - A list of errors defined if, and only if, the request failed.
  *   `kind` (*type:* `String.t`, *default:* `content#returnpolicyCustomBatchResponseEntry`) - Identifies what kind of resource this is. Value: the fixed string "content#returnpolicyCustomBatchResponseEntry".
  *   `returnPolicy` (*type:* `GoogleApi.Content.V21.Model.ReturnPolicy.t`, *default:* `nil`) - The retrieved return policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :errors => GoogleApi.Content.V21.Model.Errors.t(),
          :kind => String.t(),
          :returnPolicy => GoogleApi.Content.V21.Model.ReturnPolicy.t()
        }

  field(:batchId)
  field(:errors, as: GoogleApi.Content.V21.Model.Errors)
  field(:kind)
  field(:returnPolicy, as: GoogleApi.Content.V21.Model.ReturnPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ReturnpolicyCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ReturnpolicyCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ReturnpolicyCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
