# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceUser.V1.Model.QuotaLimit do
  @moduledoc """
  &#x60;QuotaLimit&#x60; defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a &#x60;QuotaGroup&#x60;.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"defaultLimit",
    :"description",
    :"displayName",
    :"duration",
    :"freeTier",
    :"maxLimit",
    :"metric",
    :"name",
    :"unit",
    :"values"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.QuotaLimit do
  def decode(value, _options) do
    value
  end
end

