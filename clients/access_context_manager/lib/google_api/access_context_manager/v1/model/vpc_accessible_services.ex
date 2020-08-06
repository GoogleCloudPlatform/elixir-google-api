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

defmodule GoogleApi.AccessContextManager.V1.Model.VpcAccessibleServices do
  @moduledoc """
  Specifies how APIs are allowed to communicate within the Service Perimeter.

  ## Attributes

  *   `allowedServices` (*type:* `list(String.t)`, *default:* `nil`) - The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.
  *   `enableRestriction` (*type:* `boolean()`, *default:* `nil`) - Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedServices => list(String.t()),
          :enableRestriction => boolean()
        }

  field(:allowedServices, type: :list)
  field(:enableRestriction)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.VpcAccessibleServices do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.VpcAccessibleServices.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.VpcAccessibleServices do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
