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

defmodule GoogleApi.ToolResults.V1beta3.Model.Environment do
  @moduledoc """
  An Environment represents the set of test runs (Steps) from the parent
  Execution that are configured with the same set of dimensions (Model,
  Version, Locale, and Orientation). Multiple such runs occur particularly
  because of features like sharding (splitting up a test suite to run in
  parallel across devices) and reruns (running a test multiple times to check
  for different outcomes).

  ## Attributes

  *   `completionTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - Output only. The time when the Environment status was set to complete.

      This value will be set automatically when state transitions to
      COMPLETE.
  *   `creationTime` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Timestamp.t`, *default:* `nil`) - Output only. The time when the Environment was created.
  *   `dimensionValue` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.EnvironmentDimensionValueEntry.t)`, *default:* `nil`) - Dimension values describing the environment. Dimension values always
      consist of "Model", "Version", "Locale", and "Orientation".

      - In response: always set
      - In create request: always set
      - In update request: never set
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A short human-readable name to display in the UI.
      Maximum of 100 characters.
      For example: Nexus 5, API 27.
  *   `environmentId` (*type:* `String.t`, *default:* `nil`) - Output only. An Environment id.
  *   `environmentResult` (*type:* `GoogleApi.ToolResults.V1beta3.Model.MergedResult.t`, *default:* `nil`) - Merged result of the environment.
  *   `executionId` (*type:* `String.t`, *default:* `nil`) - Output only. An Execution id.
  *   `historyId` (*type:* `String.t`, *default:* `nil`) - Output only. A History id.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Output only. A Project id.
  *   `resultsStorage` (*type:* `GoogleApi.ToolResults.V1beta3.Model.ResultsStorage.t`, *default:* `nil`) - The location where output files are stored in the user bucket.
  *   `shardSummaries` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.ShardSummary.t)`, *default:* `nil`) - Output only. Summaries of shards.

      Only one shard will present unless sharding feature is enabled in
      TestExecutionService.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :creationTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :dimensionValue =>
            list(GoogleApi.ToolResults.V1beta3.Model.EnvironmentDimensionValueEntry.t()),
          :displayName => String.t(),
          :environmentId => String.t(),
          :environmentResult => GoogleApi.ToolResults.V1beta3.Model.MergedResult.t(),
          :executionId => String.t(),
          :historyId => String.t(),
          :projectId => String.t(),
          :resultsStorage => GoogleApi.ToolResults.V1beta3.Model.ResultsStorage.t(),
          :shardSummaries => list(GoogleApi.ToolResults.V1beta3.Model.ShardSummary.t())
        }

  field(:completionTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:creationTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)

  field(:dimensionValue,
    as: GoogleApi.ToolResults.V1beta3.Model.EnvironmentDimensionValueEntry,
    type: :list
  )

  field(:displayName)
  field(:environmentId)
  field(:environmentResult, as: GoogleApi.ToolResults.V1beta3.Model.MergedResult)
  field(:executionId)
  field(:historyId)
  field(:projectId)
  field(:resultsStorage, as: GoogleApi.ToolResults.V1beta3.Model.ResultsStorage)
  field(:shardSummaries, as: GoogleApi.ToolResults.V1beta3.Model.ShardSummary, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.Environment do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
