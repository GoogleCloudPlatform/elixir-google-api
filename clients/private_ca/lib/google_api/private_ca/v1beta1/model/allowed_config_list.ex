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

defmodule GoogleApi.PrivateCA.V1beta1.Model.AllowedConfigList do
  @moduledoc """


  ## Attributes

  *   `allowedConfigValues` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigWrapper.t)`, *default:* `nil`) - Required. All Certificates issued by the CertificateAuthority must match at least one listed ReusableConfigWrapper. If a ReusableConfigWrapper has an empty field, any value will be allowed for that field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedConfigValues =>
            list(GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigWrapper.t()) | nil
        }

  field(:allowedConfigValues,
    as: GoogleApi.PrivateCA.V1beta1.Model.ReusableConfigWrapper,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.AllowedConfigList do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.AllowedConfigList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.AllowedConfigList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
