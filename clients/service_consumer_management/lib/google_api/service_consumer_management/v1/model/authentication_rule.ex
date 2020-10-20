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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.AuthenticationRule do
  @moduledoc """
  Authentication rules for the service. By default, if a method has any authentication requirements, every request must include a valid credential matching one of the requirements. It's an error to include more than one kind of credential in a single request. If a method doesn't have any auth requirements, request credentials will be ignored.

  ## Attributes

  *   `allowWithoutCredential` (*type:* `boolean()`, *default:* `nil`) - If true, the service accepts API keys without any other credential. This flag only applies to HTTP and gRPC requests.
  *   `oauth` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements.t`, *default:* `nil`) - The requirements for OAuth credentials.
  *   `requirements` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.AuthRequirement.t)`, *default:* `nil`) - Requirements for additional authentication providers.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies. Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowWithoutCredential => boolean(),
          :oauth => GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements.t(),
          :requirements => list(GoogleApi.ServiceConsumerManagement.V1.Model.AuthRequirement.t()),
          :selector => String.t()
        }

  field(:allowWithoutCredential)
  field(:oauth, as: GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements)

  field(:requirements,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.AuthRequirement,
    type: :list
  )

  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.AuthenticationRule do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.AuthenticationRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.AuthenticationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
