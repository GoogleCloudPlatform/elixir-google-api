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

defmodule GoogleApi.Compute.V1.Model.NodeGroupNode do
  @moduledoc """


  ## Attributes

  - instances (list(String.t)): Instances scheduled on this node. Defaults to `nil`.
  - name (String.t): The name of the node. Defaults to `nil`.
  - nodeType (String.t): The type of this node. Defaults to `nil`.
  - serverBinding (GoogleApi.Compute.V1.Model.ServerBinding.t): Binding properties for the physical server. Defaults to `nil`.
  - status (String.t):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(String.t()),
          :name => String.t(),
          :nodeType => String.t(),
          :serverBinding => GoogleApi.Compute.V1.Model.ServerBinding.t(),
          :status => String.t()
        }

  field(:instances, type: :list)
  field(:name)
  field(:nodeType)
  field(:serverBinding, as: GoogleApi.Compute.V1.Model.ServerBinding)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeGroupNode do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeGroupNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeGroupNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
