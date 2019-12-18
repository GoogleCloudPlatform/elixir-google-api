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

defmodule GoogleApi.AndroidManagement.V1.Model.PasswordRequirements do
  @moduledoc """
  Requirements for the password used to unlock a device.

  ## Attributes

  *   `maximumFailedPasswordsForWipe` (*type:* `integer()`, *default:* `nil`) - Number of incorrect device-unlock passwords that can be entered before a device is wiped. A value of 0 means there is no restriction.
  *   `passwordExpirationTimeout` (*type:* `String.t`, *default:* `nil`) - Password expiration timeout.
  *   `passwordHistoryLength` (*type:* `integer()`, *default:* `nil`) - The length of the password history. After setting this field, the user won't be able to enter a new password that is the same as any password in the history. A value of 0 means there is no restriction.
  *   `passwordMinimumLength` (*type:* `integer()`, *default:* `nil`) - The minimum allowed password length. A value of 0 means there is no restriction. Only enforced when password_quality is NUMERIC, NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX.
  *   `passwordMinimumLetters` (*type:* `integer()`, *default:* `nil`) - Minimum number of letters required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordMinimumLowerCase` (*type:* `integer()`, *default:* `nil`) - Minimum number of lower case letters required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordMinimumNonLetter` (*type:* `integer()`, *default:* `nil`) - Minimum number of non-letter characters (numerical digits or symbols) required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordMinimumNumeric` (*type:* `integer()`, *default:* `nil`) - Minimum number of numerical digits required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordMinimumSymbols` (*type:* `integer()`, *default:* `nil`) - Minimum number of symbols required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordMinimumUpperCase` (*type:* `integer()`, *default:* `nil`) - Minimum number of upper case letters required in the password. Only enforced when password_quality is COMPLEX.
  *   `passwordQuality` (*type:* `String.t`, *default:* `nil`) - The required password quality.
  *   `passwordScope` (*type:* `String.t`, *default:* `nil`) - The scope that the password requirement applies to.
  *   `requirePasswordUnlock` (*type:* `String.t`, *default:* `nil`) - The length of time after a device or work profile is unlocked using a strong form of authentication (password, PIN, pattern) that it can be unlocked using any other authentication method (e.g. fingerprint, trust agents, face). After the specified time period elapses, only strong forms of authentication can be used to unlock the device or work profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maximumFailedPasswordsForWipe => integer(),
          :passwordExpirationTimeout => String.t(),
          :passwordHistoryLength => integer(),
          :passwordMinimumLength => integer(),
          :passwordMinimumLetters => integer(),
          :passwordMinimumLowerCase => integer(),
          :passwordMinimumNonLetter => integer(),
          :passwordMinimumNumeric => integer(),
          :passwordMinimumSymbols => integer(),
          :passwordMinimumUpperCase => integer(),
          :passwordQuality => String.t(),
          :passwordScope => String.t(),
          :requirePasswordUnlock => String.t()
        }

  field(:maximumFailedPasswordsForWipe)
  field(:passwordExpirationTimeout)
  field(:passwordHistoryLength)
  field(:passwordMinimumLength)
  field(:passwordMinimumLetters)
  field(:passwordMinimumLowerCase)
  field(:passwordMinimumNonLetter)
  field(:passwordMinimumNumeric)
  field(:passwordMinimumSymbols)
  field(:passwordMinimumUpperCase)
  field(:passwordQuality)
  field(:passwordScope)
  field(:requirePasswordUnlock)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
