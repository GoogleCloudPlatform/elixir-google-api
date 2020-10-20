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

defmodule GoogleApi.Domains.V1alpha2.Model.RetrieveRegisterParametersResponse do
  @moduledoc """
  Response for the `RetrieveRegisterParameters` method.

  ## Attributes

  *   `registerParameters` (*type:* `GoogleApi.Domains.V1alpha2.Model.RegisterParameters.t`, *default:* `nil`) - Parameters to use when calling the `RegisterDomain` method.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :registerParameters => GoogleApi.Domains.V1alpha2.Model.RegisterParameters.t()
        }

  field(:registerParameters, as: GoogleApi.Domains.V1alpha2.Model.RegisterParameters)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1alpha2.Model.RetrieveRegisterParametersResponse do
  def decode(value, options) do
    GoogleApi.Domains.V1alpha2.Model.RetrieveRegisterParametersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1alpha2.Model.RetrieveRegisterParametersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
