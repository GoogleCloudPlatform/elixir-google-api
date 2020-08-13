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

defmodule GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress do
  @moduledoc """
  Measures the progress of a particular metric.

  ## Attributes

  *   `workCompleted` (*type:* `String.t`, *default:* `nil`) - The amount of work that has been completed. Note that this may be greater than work_estimated.
  *   `workEstimated` (*type:* `String.t`, *default:* `nil`) - An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :workCompleted => String.t(),
          :workEstimated => String.t()
        }

  field(:workCompleted)
  field(:workEstimated)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.GoogleDatastoreAdminV1beta1Progress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
