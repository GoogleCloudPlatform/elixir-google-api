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

defmodule GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  @moduledoc """
  A batch entry encoding a single non-batch accountstatuses response.

  ## Attributes

  - accountStatus (GoogleApi.Content.V2.Model.AccountStatus.t): The requested account status. Defined if and only if the request was successful. Defaults to `nil`.
  - batchId (integer()): The ID of the request entry this entry responds to. Defaults to `nil`.
  - errors (GoogleApi.Content.V2.Model.Errors.t): A list of errors defined if and only if the request failed. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountStatus => GoogleApi.Content.V2.Model.AccountStatus.t(),
          :batchId => integer(),
          :errors => GoogleApi.Content.V2.Model.Errors.t()
        }

  field(:accountStatus, as: GoogleApi.Content.V2.Model.AccountStatus)
  field(:batchId)
  field(:errors, as: GoogleApi.Content.V2.Model.Errors)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountstatusesCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
