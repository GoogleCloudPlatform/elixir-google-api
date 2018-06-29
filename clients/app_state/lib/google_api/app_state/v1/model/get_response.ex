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

defmodule GoogleApi.AppState.V1.Model.GetResponse do
  @moduledoc """
  This is a JSON template for an app state resource.

  ## Attributes

  - currentStateVersion (String.t): The current app state version. Defaults to: `null`.
  - data (String.t): The requested data. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string appstate#getResponse. Defaults to: `null`.
  - stateKey (integer()): The key for the data. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentStateVersion => any(),
          :data => any(),
          :kind => any(),
          :stateKey => any()
        }

  field(:currentStateVersion)
  field(:data)
  field(:kind)
  field(:stateKey)
end

defimpl Poison.Decoder, for: GoogleApi.AppState.V1.Model.GetResponse do
  def decode(value, options) do
    GoogleApi.AppState.V1.Model.GetResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppState.V1.Model.GetResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
