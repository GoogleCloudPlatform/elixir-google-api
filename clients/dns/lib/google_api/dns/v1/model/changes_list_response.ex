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

defmodule GoogleApi.DNS.V1.Model.ChangesListResponse do
  @moduledoc """


  ## Attributes

  *   `changes` (*type:* `list(GoogleApi.DNS.V1.Model.Change.t)`, *default:* `nil`) - 
  *   `header` (*type:* `GoogleApi.DNS.V1.Model.ResponseHeader.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `dns#changesListResponse`) - Type of resource.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :changes => list(GoogleApi.DNS.V1.Model.Change.t()),
          :header => GoogleApi.DNS.V1.Model.ResponseHeader.t(),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:changes, as: GoogleApi.DNS.V1.Model.Change, type: :list)
  field(:header, as: GoogleApi.DNS.V1.Model.ResponseHeader)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ChangesListResponse do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ChangesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ChangesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
