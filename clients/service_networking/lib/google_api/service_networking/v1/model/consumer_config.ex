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

defmodule GoogleApi.ServiceNetworking.V1.Model.ConsumerConfig do
  @moduledoc """
  Configuration information for a private service access connection.

  ## Attributes

  *   `consumerExportCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Export custom routes flag value for peering from consumer to producer.
  *   `consumerExportSubnetRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Export subnet routes with public ip flag value for peering from consumer to producer.
  *   `consumerImportCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Import custom routes flag value for peering from consumer to producer.
  *   `consumerImportSubnetRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Import subnet routes with public ip flag value for peering from consumer to producer.
  *   `producerExportCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Export custom routes flag value for peering from producer to consumer.
  *   `producerExportSubnetRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Export subnet routes with public ip flag value for peering from producer to consumer.
  *   `producerImportCustomRoutes` (*type:* `boolean()`, *default:* `nil`) - Import custom routes flag value for peering from producer to consumer.
  *   `producerImportSubnetRoutesWithPublicIp` (*type:* `boolean()`, *default:* `nil`) - Import subnet routes with public ip flag value for peering from producer to consumer.
  *   `producerNetwork` (*type:* `String.t`, *default:* `nil`) - Output only. The VPC host network that is used to host managed service instances. In the format, projects/{project}/global/networks/{network} where {project} is the project number e.g. '12345' and {network} is the network name.
  *   `reservedRanges` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange.t)`, *default:* `nil`) - Output only. The reserved ranges associated with this private service access connection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerExportCustomRoutes => boolean(),
          :consumerExportSubnetRoutesWithPublicIp => boolean(),
          :consumerImportCustomRoutes => boolean(),
          :consumerImportSubnetRoutesWithPublicIp => boolean(),
          :producerExportCustomRoutes => boolean(),
          :producerExportSubnetRoutesWithPublicIp => boolean(),
          :producerImportCustomRoutes => boolean(),
          :producerImportSubnetRoutesWithPublicIp => boolean(),
          :producerNetwork => String.t(),
          :reservedRanges =>
            list(
              GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange.t()
            )
        }

  field(:consumerExportCustomRoutes)
  field(:consumerExportSubnetRoutesWithPublicIp)
  field(:consumerImportCustomRoutes)
  field(:consumerImportSubnetRoutesWithPublicIp)
  field(:producerExportCustomRoutes)
  field(:producerExportSubnetRoutesWithPublicIp)
  field(:producerImportCustomRoutes)
  field(:producerImportSubnetRoutesWithPublicIp)
  field(:producerNetwork)

  field(:reservedRanges,
    as:
      GoogleApi.ServiceNetworking.V1.Model.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.ConsumerConfig do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.ConsumerConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.ConsumerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
