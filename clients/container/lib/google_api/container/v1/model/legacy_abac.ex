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

defmodule GoogleApi.Container.V1.Model.LegacyAbac do
  @moduledoc """
  Configuration for the legacy Attribute Based Access Control authorization mode.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"enabled"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.LegacyAbac do
  def decode(value, _options) do
    value
  end
end

