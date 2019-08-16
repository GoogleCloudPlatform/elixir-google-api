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

defmodule GoogleApi.TPU.V1.Model.ListTensorFlowVersionsResponse do
  @moduledoc """
  Response for ListTensorFlowVersions.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The next page token or empty if none.
  *   `tensorflowVersions` (*type:* `list(GoogleApi.TPU.V1.Model.TensorFlowVersion.t)`, *default:* `nil`) - The listed nodes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :tensorflowVersions => list(GoogleApi.TPU.V1.Model.TensorFlowVersion.t())
        }

  field(:nextPageToken)
  field(:tensorflowVersions, as: GoogleApi.TPU.V1.Model.TensorFlowVersion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V1.Model.ListTensorFlowVersionsResponse do
  def decode(value, options) do
    GoogleApi.TPU.V1.Model.ListTensorFlowVersionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V1.Model.ListTensorFlowVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
