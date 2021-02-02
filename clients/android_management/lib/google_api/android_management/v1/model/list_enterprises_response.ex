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

defmodule GoogleApi.AndroidManagement.V1.Model.ListEnterprisesResponse do
  @moduledoc """
  This feature is not generally available yet. Response to a request to list enterprises.

  ## Attributes

  *   `enterprises` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.Enterprise.t)`, *default:* `nil`) - This feature is not generally available yet. The list of enterprises.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - This feature is not generally available yet. If there are more results, a token to retrieve next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enterprises => list(GoogleApi.AndroidManagement.V1.Model.Enterprise.t()),
          :nextPageToken => String.t()
        }

  field(:enterprises, as: GoogleApi.AndroidManagement.V1.Model.Enterprise, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ListEnterprisesResponse do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ListEnterprisesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ListEnterprisesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
