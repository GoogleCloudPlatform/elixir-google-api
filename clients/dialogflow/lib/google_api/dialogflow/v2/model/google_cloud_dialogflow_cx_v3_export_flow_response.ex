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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ExportFlowResponse do
  @moduledoc """
  The response message for Flows.ExportFlow.

  ## Attributes

  *   `flowContent` (*type:* `String.t`, *default:* `nil`) - Uncompressed raw byte content for flow.
  *   `flowUri` (*type:* `String.t`, *default:* `nil`) - The URI to a file containing the exported flow. This field is populated only if `flow_uri` is specified in ExportFlowRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :flowContent => String.t() | nil,
          :flowUri => String.t() | nil
        }

  field(:flowContent)
  field(:flowUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ExportFlowResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ExportFlowResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ExportFlowResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
