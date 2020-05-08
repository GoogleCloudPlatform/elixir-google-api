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

defmodule GoogleApi.ServiceNetworking.V1.Model.Billing do
  @moduledoc """
  Billing related configuration of the service.

  The following example shows how to configure monitored resources and metrics
  for billing, `consumer_destinations` is the only supported destination and
  the monitored resources need at least one label key
  `cloud.googleapis.com/location` to indicate the location of the billing
  usage, using different monitored resources between monitoring and billing is
  recommended so they can be evolved independently:


      monitored_resources:
      - type: library.googleapis.com/billing_branch
        labels:
        - key: cloud.googleapis.com/location
          description: |
            Predefined label to support billing location restriction.
        - key: city
          description: |
            Custom label to define the city where the library branch is located
            in.
        - key: name
          description: Custom label to define the name of the library branch.
      metrics:
      - name: library.googleapis.com/book/borrowed_count
        metric_kind: DELTA
        value_type: INT64
        unit: "1"
      billing:
        consumer_destinations:
        - monitored_resource: library.googleapis.com/billing_branch
          metrics:
          - library.googleapis.com/book/borrowed_count

  ## Attributes

  *   `consumerDestinations` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.BillingDestination.t)`, *default:* `nil`) - Billing configurations for sending metrics to the consumer project.
      There can be multiple consumer destinations per service, each one must have
      a different monitored resource type. A metric can be used in at most
      one consumer destination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations =>
            list(GoogleApi.ServiceNetworking.V1.Model.BillingDestination.t())
        }

  field(:consumerDestinations,
    as: GoogleApi.ServiceNetworking.V1.Model.BillingDestination,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Billing do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Billing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Billing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
