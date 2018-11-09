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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor do
  @moduledoc """
  A description of a label.

  ## Attributes

  - description (String.t): A human-readable description for the label. Defaults to: `null`.
  - key (String.t): The label key. Defaults to: `null`.
  - valueType (String.t): The type of data that can be assigned to the label. Defaults to: `null`.
    - Enum - one of [STRING, BOOL, INT64]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :key => any(),
          :valueType => any()
        }

  field(:description)
  field(:key)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.LabelDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
