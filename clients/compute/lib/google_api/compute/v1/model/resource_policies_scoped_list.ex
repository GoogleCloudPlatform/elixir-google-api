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

defmodule GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList do
  @moduledoc """


  ## Attributes

  - resourcePolicies (list(GoogleApi.Compute.V1.Model.ResourcePolicy.t)): A list of resourcePolicies contained in this scope. Defaults to `nil`.
  - warning (GoogleApi.Compute.V1.Model.ResourcePoliciesScopedListWarning.t): Informational warning which replaces the list of resourcePolicies when the list is empty. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourcePolicies => list(GoogleApi.Compute.V1.Model.ResourcePolicy.t()),
          :warning => GoogleApi.Compute.V1.Model.ResourcePoliciesScopedListWarning.t()
        }

  field(:resourcePolicies, as: GoogleApi.Compute.V1.Model.ResourcePolicy, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.ResourcePoliciesScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ResourcePoliciesScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
