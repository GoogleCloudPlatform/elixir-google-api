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

defmodule GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt do
  @moduledoc """


  ## Attributes

  *   `errors` (*type:* `GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrors.t`, *default:* `nil`) - [Output Only] Encountered errors during the last attempt to create or delete the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrors.t()
        }

  field(:errors, as: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttemptErrors)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
