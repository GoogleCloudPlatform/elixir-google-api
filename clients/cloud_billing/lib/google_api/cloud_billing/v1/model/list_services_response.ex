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

defmodule GoogleApi.CloudBilling.V1.Model.ListServicesResponse do
  @moduledoc """
  Response message for `ListServices`.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results. To retrieve the next page,
      call `ListServices` again with the `page_token` field set to this
      value. This field is empty if there are no more results to retrieve.
  *   `services` (*type:* `list(GoogleApi.CloudBilling.V1.Model.Service.t)`, *default:* `nil`) - A list of services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :services => list(GoogleApi.CloudBilling.V1.Model.Service.t())
        }

  field(:nextPageToken)
  field(:services, as: GoogleApi.CloudBilling.V1.Model.Service, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.ListServicesResponse do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.ListServicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.ListServicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
