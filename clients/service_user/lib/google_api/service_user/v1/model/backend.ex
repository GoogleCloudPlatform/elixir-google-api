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

defmodule GoogleApi.ServiceUser.V1.Model.Backend do
  @moduledoc """
  `Backend` defines the backend configuration for a service.

  ## Attributes

  - rules (list(GoogleApi.ServiceUser.V1.Model.BackendRule.t)): A list of API backend rules that apply to individual API methods.

  **NOTE:** All service configuration rules follow "last one wins" order. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rules => list(GoogleApi.ServiceUser.V1.Model.BackendRule.t())
        }

  field(:rules, as: GoogleApi.ServiceUser.V1.Model.BackendRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Backend do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Backend.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Backend do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
