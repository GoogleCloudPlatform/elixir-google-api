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

defmodule GoogleApi.Compute.V1.Model.AcceleratorConfig do
  @moduledoc """
  A specification of the type and number of accelerator cards attached to the instance.

  ## Attributes

  - acceleratorCount (integer()): The number of the guest accelerator cards exposed to this instance. Defaults to `nil`.
  - acceleratorType (String.t): Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorCount => integer(),
          :acceleratorType => String.t()
        }

  field(:acceleratorCount)
  field(:acceleratorType)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AcceleratorConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AcceleratorConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AcceleratorConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
