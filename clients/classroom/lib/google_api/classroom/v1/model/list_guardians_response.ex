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

defmodule GoogleApi.Classroom.V1.Model.ListGuardiansResponse do
  @moduledoc """
  Response when listing guardians.

  ## Attributes

  *   `guardians` (*type:* `list(GoogleApi.Classroom.V1.Model.Guardian.t)`, *default:* `nil`) - Guardians on this page of results that met the criteria specified in
      the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token identifying the next page of results to return. If empty, no further
      results are available.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :guardians => list(GoogleApi.Classroom.V1.Model.Guardian.t()),
          :nextPageToken => String.t()
        }

  field(:guardians, as: GoogleApi.Classroom.V1.Model.Guardian, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.ListGuardiansResponse do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.ListGuardiansResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.ListGuardiansResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
