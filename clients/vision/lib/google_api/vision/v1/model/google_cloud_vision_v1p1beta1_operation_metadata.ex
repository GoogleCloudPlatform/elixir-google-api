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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1OperationMetadata do
  @moduledoc """
  Contains metadata for the BatchAnnotateImages operation.

  ## Attributes

  - createTime (DateTime.t): The time when the batch request was received. Defaults to `nil`.
  - state (String.t): Current state of the batch operation. Defaults to `nil`.
  - updateTime (DateTime.t): The time when the operation result was last updated. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :state => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1OperationMetadata do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p1beta1OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
