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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1StatsEnvironmentStats do
  @moduledoc """
  This message type encapsulates the environment wrapper
      "environments": [
       {
           "metrics": [
               {
                   "name": "sum(message_count)",
                   "values": [
                       "2.52056245E8"
                   ]
               }
           ],
           "name": "prod"
       }
   ]

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DimensionMetric.t)`, *default:* `nil`) - This field contains the list of metrics grouped under dimensions
  *   `metrics` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Metric.t)`, *default:* `nil`) - In the final response, only one of the following fields will be present
      based on the dimensions provided. If no dimensions are provided, then
      only a top level metrics is provided. If dimensions are included, then
      there will be a top level dimensions field under environments which will
      contain metrics values and the dimension name.
      Example:
           "environments": [
            {
               "dimensions": [
                   {
                       "metrics": [
                           {
                               "name": "sum(message_count)",
                               "values": [
                                   "2.14049521E8"
                               ]
                           }
                       ],
                       "name": "nit_proxy"
                   }
                 ],
                 "name": "prod"
             }
          ]

          OR
          "environments": [
                 {
                     "metrics": [
                         {
                             "name": "sum(message_count)",
                              "values": [
                                 "2.19026331E8"
                             ]
                         }
                     ],
                     "name": "prod"
                 }
             ]
      This field contains the list of metric values
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DimensionMetric.t()),
          :metrics => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Metric.t()),
          :name => String.t()
        }

  field(:dimensions, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DimensionMetric, type: :list)

  field(:metrics, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Metric, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1StatsEnvironmentStats do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1StatsEnvironmentStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1StatsEnvironmentStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
