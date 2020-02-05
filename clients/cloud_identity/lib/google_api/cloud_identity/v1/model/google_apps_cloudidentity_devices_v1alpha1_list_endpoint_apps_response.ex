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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse do
  @moduledoc """
  Response message for listing all apps on the device.

  ## Attributes

  *   `endpointApps` (*type:* `list(GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1EndpointApp.t)`, *default:* `nil`) - The list of matching EndpointApps found as a result of the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results. Empty if there are no more
      results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpointApps =>
            list(
              GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1EndpointApp.t()
            ),
          :nextPageToken => String.t()
        }

  field(:endpointApps,
    as: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1EndpointApp,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
