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

defmodule GoogleApi.AndroidManagement.V1.Model.PasswordRequirements do
  @moduledoc """
  Requirements for the password used to unlock a device.

  ## Attributes

  - maximumFailedPasswordsForWipe (integer()): Number of incorrect device-unlock passwords that can be entered before a device is wiped. A value of 0 means there is no restriction. Defaults to `nil`.
  - passwordExpirationTimeout (String.t): Password expiration timeout. Defaults to `nil`.
  - passwordHistoryLength (integer()): The length of the password history. After setting this field, the user won't be able to enter a new password that is the same as any password in the history. A value of 0 means there is no restriction. Defaults to `nil`.
  - passwordMinimumLength (integer()): The minimum allowed password length. A value of 0 means there is no restriction. Only enforced when password_quality is NUMERIC, NUMERIC_COMPLEX, ALPHABETIC, ALPHANUMERIC, or COMPLEX. Defaults to `nil`.
  - passwordMinimumLetters (integer()): Minimum number of letters required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordMinimumLowerCase (integer()): Minimum number of lower case letters required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordMinimumNonLetter (integer()): Minimum number of non-letter characters (numerical digits or symbols) required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordMinimumNumeric (integer()): Minimum number of numerical digits required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordMinimumSymbols (integer()): Minimum number of symbols required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordMinimumUpperCase (integer()): Minimum number of upper case letters required in the password. Only enforced when password_quality is COMPLEX. Defaults to `nil`.
  - passwordQuality (String.t): The required password quality. Defaults to `nil`.
  - passwordScope (String.t): The scope that the password requirement applies to. Defaults to `nil`.
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
          :passwordScope => String.t()
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
