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

defmodule GoogleApi.Fitness.V1.Model.Dataset do
  @moduledoc """
  A dataset represents a projection container for data points. They do not carry any info of their own. Datasets represent a set of data points from a particular data source. A data point can be found in more than one dataset.

  ## Attributes

  *   `dataSourceId` (*type:* `String.t`, *default:* `nil`) - The data stream ID of the data source that created the points in this dataset.
  *   `maxEndTimeNs` (*type:* `String.t`, *default:* `nil`) - The largest end time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the second part of the dataset identifier.
  *   `minStartTimeNs` (*type:* `String.t`, *default:* `nil`) - The smallest start time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the first part of the dataset identifier.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - This token will be set when a dataset is received in response to a GET request and the dataset is too large to be included in a single response. Provide this value in a subsequent GET request to return the next page of data points within this dataset.
  *   `point` (*type:* `list(GoogleApi.Fitness.V1.Model.DataPoint.t)`, *default:* `nil`) - A partial list of data points contained in the dataset, ordered by endTimeNanos. This list is considered complete when retrieving a small dataset and partial when patching a dataset or retrieving a dataset that is too large to include in a single response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceId => String.t() | nil,
          :maxEndTimeNs => String.t() | nil,
          :minStartTimeNs => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :point => list(GoogleApi.Fitness.V1.Model.DataPoint.t()) | nil
        }

  field(:dataSourceId)
  field(:maxEndTimeNs)
  field(:minStartTimeNs)
  field(:nextPageToken)
  field(:point, as: GoogleApi.Fitness.V1.Model.DataPoint, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.Dataset do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.Dataset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.Dataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
