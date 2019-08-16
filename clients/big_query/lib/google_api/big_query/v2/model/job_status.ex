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

defmodule GoogleApi.BigQuery.V2.Model.JobStatus do
  @moduledoc """


  ## Attributes

  *   `errorResult` (*type:* `GoogleApi.BigQuery.V2.Model.ErrorProto.t`, *default:* `nil`) - [Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  *   `errors` (*type:* `list(GoogleApi.BigQuery.V2.Model.ErrorProto.t)`, *default:* `nil`) - [Output-only] The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
  *   `state` (*type:* `String.t`, *default:* `nil`) - [Output-only] Running state of the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorResult => GoogleApi.BigQuery.V2.Model.ErrorProto.t(),
          :errors => list(GoogleApi.BigQuery.V2.Model.ErrorProto.t()),
          :state => String.t()
        }

  field(:errorResult, as: GoogleApi.BigQuery.V2.Model.ErrorProto)
  field(:errors, as: GoogleApi.BigQuery.V2.Model.ErrorProto, type: :list)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobStatus do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
