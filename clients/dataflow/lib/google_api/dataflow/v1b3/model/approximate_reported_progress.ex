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

defmodule GoogleApi.Dataflow.V1b3.Model.ApproximateReportedProgress do
  @moduledoc """
  A progress measurement of a WorkItem by a worker.

  ## Attributes

  *   `consumedParallelism` (*type:* `GoogleApi.Dataflow.V1b3.Model.ReportedParallelism.t`, *default:* `nil`) - Total amount of parallelism in the portion of input of this task that has already been consumed and is no longer active. In the first two examples above (see remaining_parallelism), the value should be 29 or 2 respectively. The sum of remaining_parallelism and consumed_parallelism should equal the total amount of parallelism in this work item. If specified, must be finite.
  *   `fractionConsumed` (*type:* `float()`, *default:* `nil`) - Completion as fraction of the input consumed, from 0.0 (beginning, nothing consumed), to 1.0 (end of the input, entire input consumed).
  *   `position` (*type:* `GoogleApi.Dataflow.V1b3.Model.Position.t`, *default:* `nil`) - A Position within the work to represent a progress.
  *   `remainingParallelism` (*type:* `GoogleApi.Dataflow.V1b3.Model.ReportedParallelism.t`, *default:* `nil`) - Total amount of parallelism in the input of this task that remains, (i.e. can be delegated to this task and any new tasks via dynamic splitting). Always at least 1 for non-finished work items and 0 for finished. "Amount of parallelism" refers to how many non-empty parts of the input can be read in parallel. This does not necessarily equal number of records. An input that can be read in parallel down to the individual records is called "perfectly splittable". An example of non-perfectly parallelizable input is a block-compressed file format where a block of records has to be read as a whole, but different blocks can be read in parallel. Examples: * If we are processing record #30 (starting at 1) out of 50 in a perfectly splittable 50-record input, this value should be 21 (20 remaining + 1 current). * If we are reading through block 3 in a block-compressed file consisting of 5 blocks, this value should be 3 (since blocks 4 and 5 can be processed in parallel by new tasks via dynamic splitting and the current task remains processing block 3). * If we are reading through the last block in a block-compressed file, or reading or processing the last record in a perfectly splittable input, this value should be 1, because apart from the current task, no additional remainder can be split off.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumedParallelism => GoogleApi.Dataflow.V1b3.Model.ReportedParallelism.t(),
          :fractionConsumed => float(),
          :position => GoogleApi.Dataflow.V1b3.Model.Position.t(),
          :remainingParallelism => GoogleApi.Dataflow.V1b3.Model.ReportedParallelism.t()
        }

  field(:consumedParallelism, as: GoogleApi.Dataflow.V1b3.Model.ReportedParallelism)
  field(:fractionConsumed)
  field(:position, as: GoogleApi.Dataflow.V1b3.Model.Position)
  field(:remainingParallelism, as: GoogleApi.Dataflow.V1b3.Model.ReportedParallelism)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateReportedProgress do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ApproximateReportedProgress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateReportedProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
