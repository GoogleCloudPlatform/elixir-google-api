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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ImportTestCasesMetadata do
  @moduledoc """
  Metadata returned for the TestCases.ImportTestCases long running operation.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestCaseError.t)`, *default:* `nil`) - Errors for failed test cases.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestCaseError.t()) | nil
        }

  field(:errors,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3TestCaseError,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ImportTestCasesMetadata do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ImportTestCasesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3ImportTestCasesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
