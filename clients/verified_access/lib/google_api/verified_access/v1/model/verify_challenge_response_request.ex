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

defmodule GoogleApi.VerifiedAccess.V1.Model.VerifyChallengeResponseRequest do
  @moduledoc """
  signed ChallengeResponse

  ## Attributes

  *   `challengeResponse` (*type:* `GoogleApi.VerifiedAccess.V1.Model.SignedData.t`, *default:* `nil`) - The generated response to the challenge
  *   `expectedIdentity` (*type:* `String.t`, *default:* `nil`) - Service can optionally provide identity information about the device
      or user associated with the key.
      For an EMK, this value is the enrolled domain.
      For an EUK, this value is the user's email address.
      If present, this value will be checked against contents
      of the response, and verification will fail if there is no match.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :challengeResponse => GoogleApi.VerifiedAccess.V1.Model.SignedData.t(),
          :expectedIdentity => String.t()
        }

  field(:challengeResponse, as: GoogleApi.VerifiedAccess.V1.Model.SignedData)
  field(:expectedIdentity)
end

defimpl Poison.Decoder, for: GoogleApi.VerifiedAccess.V1.Model.VerifyChallengeResponseRequest do
  def decode(value, options) do
    GoogleApi.VerifiedAccess.V1.Model.VerifyChallengeResponseRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VerifiedAccess.V1.Model.VerifyChallengeResponseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
