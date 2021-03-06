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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse do
  @moduledoc """
  Response for ListDeveloperSubscriptions.

  ## Attributes

  *   `developerSubscriptions` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperSubscription.t)`, *default:* `nil`) - List of all subscriptions.
  *   `nextStartKey` (*type:* `String.t`, *default:* `nil`) - Value that can be sent as `startKey` to retrieve the next page of content. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :developerSubscriptions =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperSubscription.t()) | nil,
          :nextStartKey => String.t() | nil
        }

  field(:developerSubscriptions,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeveloperSubscription,
    type: :list
  )

  field(:nextStartKey)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
