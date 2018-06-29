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

defmodule GoogleApi.Compute.V1.Model.PathRule do
  @moduledoc """
  A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.

  ## Attributes

  - paths ([String.t]): The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here. Defaults to: `null`.
  - service (String.t): The URL of the BackendService resource if this rule is matched. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :paths => list(any()),
          :service => any()
        }

  field(:paths, type: :list)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PathRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
