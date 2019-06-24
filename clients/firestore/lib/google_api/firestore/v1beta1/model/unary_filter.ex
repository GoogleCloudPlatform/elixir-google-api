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

defmodule GoogleApi.Firestore.V1beta1.Model.UnaryFilter do
  @moduledoc """
  A filter with a single operand.

  ## Attributes

  *   `field` (*type:* `GoogleApi.Firestore.V1beta1.Model.FieldReference.t`, *default:* `nil`) - The field to which to apply the operator.
  *   `op` (*type:* `String.t`, *default:* `nil`) - The unary operator to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => GoogleApi.Firestore.V1beta1.Model.FieldReference.t(),
          :op => String.t()
        }

  field(:field, as: GoogleApi.Firestore.V1beta1.Model.FieldReference)
  field(:op)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.UnaryFilter do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.UnaryFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.UnaryFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
