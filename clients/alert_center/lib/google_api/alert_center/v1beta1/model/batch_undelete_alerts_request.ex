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

defmodule GoogleApi.AlertCenter.V1beta1.Model.BatchUndeleteAlertsRequest do
  @moduledoc """
  A request to perform batch undelete on alerts.

  ## Attributes

  *   `alertId` (*type:* `list(String.t)`, *default:* `nil`) - Required. list of alert ids.
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Optional. The unique identifier of the G Suite organization account of the
      customer the alerts are associated with.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alertId => list(String.t()),
          :customerId => String.t()
        }

  field(:alertId, type: :list)
  field(:customerId)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.BatchUndeleteAlertsRequest do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.BatchUndeleteAlertsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.BatchUndeleteAlertsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
