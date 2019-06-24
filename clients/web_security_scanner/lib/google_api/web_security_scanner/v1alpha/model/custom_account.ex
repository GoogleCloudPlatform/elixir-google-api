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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.CustomAccount do
  @moduledoc """
  Describes authentication configuration that uses a custom account.

  ## Attributes

  *   `loginUrl` (*type:* `String.t`, *default:* `nil`) - Required.
      The login form URL of the website.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Input only.
      Required.
      The password of the custom account. The credential is stored encrypted
      and not returned in any response nor included in audit logs.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required.
      The user name of the custom account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :loginUrl => String.t(),
          :password => String.t(),
          :username => String.t()
        }

  field(:loginUrl)
  field(:password)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.CustomAccount do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.CustomAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.CustomAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
