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

defmodule GoogleApi.DeploymentManager.V2.Model.Type do
  @moduledoc """
  A resource type supported by Deployment Manager.

  ## Attributes

  - id (String.t): Output only. Unique identifier for the resource; defined by the server. Defaults to: `null`.
  - insertTime (String.t): Output only. Timestamp when the type was created, in RFC3339 text format. Defaults to: `null`.
  - name (String.t): Name of the type. Defaults to: `null`.
  - operation (Operation): Output only. The Operation that most recently ran, or is currently running, on this type. Defaults to: `null`.
  - selfLink (String.t): Output only. Self link for the type. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :insertTime => any(),
          :name => any(),
          :operation => GoogleApi.DeploymentManager.V2.Model.Operation.t(),
          :selfLink => any()
        }

  field(:id)
  field(:insertTime)
  field(:name)
  field(:operation, as: GoogleApi.DeploymentManager.V2.Model.Operation)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.Type do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
