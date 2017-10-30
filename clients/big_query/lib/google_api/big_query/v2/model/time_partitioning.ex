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

defmodule GoogleApi.BigQuery.V2.Model.TimePartitioning do
  @moduledoc """
  

  ## Attributes

  - expirationMs (String): [Optional] Number of milliseconds for which to keep the storage for a partition. Defaults to: `null`.
  - type (String): [Required] The only type supported is DAY, which will generate one partition per day based on data loading time. Defaults to: `null`.
  """

  defstruct [
    :"expirationMs",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TimePartitioning do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TimePartitioning do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

