# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceUser.V1.Model.Billing do
  @moduledoc """
  Billing related configuration of the service.  The following example shows how to configure monitored resources and metrics for billing:      monitored_resources:     - type: library.googleapis.com/branch       labels:       - key: /city         description: The city where the library branch is located in.       - key: /name         description: The name of the branch.     metrics:     - name: library.googleapis.com/book/borrowed_count       metric_kind: DELTA       value_type: INT64     billing:       consumer_destinations:       - monitored_resource: library.googleapis.com/branch         metrics:         - library.googleapis.com/book/borrowed_count

  ## Attributes

  - consumerDestinations ([BillingDestination]): Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations => list(GoogleApi.ServiceUser.V1.Model.BillingDestination.t())
        }

  field(:consumerDestinations, as: GoogleApi.ServiceUser.V1.Model.BillingDestination, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Billing do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Billing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Billing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
