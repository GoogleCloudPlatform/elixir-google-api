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

defmodule GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary do
  @moduledoc """
  Description of the composing transforms, names/ids, and input/outputs of a stage of execution. Some composing transforms and sources may have been generated by the Dataflow service during execution planning.

  ## Attributes

  *   `componentSource` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.ComponentSource.t)`, *default:* `nil`) - Collections produced and consumed by component transforms of this stage.
  *   `componentTransform` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.ComponentTransform.t)`, *default:* `nil`) - Transforms that comprise this execution stage.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Dataflow service generated id for this stage.
  *   `inputSource` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.StageSource.t)`, *default:* `nil`) - Input sources for this stage.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Type of tranform this stage is executing.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Dataflow service generated name for this stage.
  *   `outputSource` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.StageSource.t)`, *default:* `nil`) - Output sources for this stage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentSource => list(GoogleApi.Dataflow.V1b3.Model.ComponentSource.t()),
          :componentTransform => list(GoogleApi.Dataflow.V1b3.Model.ComponentTransform.t()),
          :id => String.t(),
          :inputSource => list(GoogleApi.Dataflow.V1b3.Model.StageSource.t()),
          :kind => String.t(),
          :name => String.t(),
          :outputSource => list(GoogleApi.Dataflow.V1b3.Model.StageSource.t())
        }

  field(:componentSource, as: GoogleApi.Dataflow.V1b3.Model.ComponentSource, type: :list)
  field(:componentTransform, as: GoogleApi.Dataflow.V1b3.Model.ComponentTransform, type: :list)
  field(:id)
  field(:inputSource, as: GoogleApi.Dataflow.V1b3.Model.StageSource, type: :list)
  field(:kind)
  field(:name)
  field(:outputSource, as: GoogleApi.Dataflow.V1b3.Model.StageSource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
