# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.BqmlTrainingRun do
  @moduledoc """


  ## Attributes

  *   `iterationResults` (*type:* `list(GoogleApi.BigQuery.V2.Model.BqmlIterationResult.t)`, *default:* `nil`) - [Output-only, Beta] List of each iteration results.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - [Output-only, Beta] Training run start time in milliseconds since the epoch.
  *   `state` (*type:* `String.t`, *default:* `nil`) - [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  *   `trainingOptions` (*type:* `GoogleApi.BigQuery.V2.Model.BqmlTrainingRunTrainingOptions.t`, *default:* `nil`) - [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iterationResults => list(GoogleApi.BigQuery.V2.Model.BqmlIterationResult.t()),
          :startTime => DateTime.t(),
          :state => String.t(),
          :trainingOptions => GoogleApi.BigQuery.V2.Model.BqmlTrainingRunTrainingOptions.t()
        }

  field(:iterationResults, as: GoogleApi.BigQuery.V2.Model.BqmlIterationResult, type: :list)
  field(:startTime, as: DateTime)
  field(:state)
  field(:trainingOptions, as: GoogleApi.BigQuery.V2.Model.BqmlTrainingRunTrainingOptions)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BqmlTrainingRun do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BqmlTrainingRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BqmlTrainingRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
