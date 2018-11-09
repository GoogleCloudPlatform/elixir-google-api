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

defmodule GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateError do
  @moduledoc """
  [Output Only] Errors that occurred during the rolling update.

  ## Attributes

  - errors ([InstanceUpdateErrorErrors]): [Output Only] The array of errors encountered while processing this operation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors =>
            list(GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateErrorErrors.t())
        }

  field(
    :errors,
    as: GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateErrorErrors,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateError do
  def decode(value, options) do
    GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
