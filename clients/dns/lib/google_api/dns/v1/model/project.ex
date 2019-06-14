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

defmodule GoogleApi.DNS.V1.Model.Project do
  @moduledoc """
  A project resource. The project is a top level container for resources including Cloud DNS ManagedZones. Projects can be created only in the APIs console.

  ## Attributes

  - id (String.t): User assigned unique identifier for the resource (output only). Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "dns#project". Defaults to `dns#project`.
  - number (String.t): Unique numeric identifier for the resource; defined by the server (output only). Defaults to `nil`.
  - quota (GoogleApi.DNS.V1.Model.Quota.t): Quotas assigned to this project (output only). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :kind => String.t(),
          :number => String.t(),
          :quota => GoogleApi.DNS.V1.Model.Quota.t()
        }

  field(:id)
  field(:kind)
  field(:number)
  field(:quota, as: GoogleApi.DNS.V1.Model.Quota)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.Project do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
