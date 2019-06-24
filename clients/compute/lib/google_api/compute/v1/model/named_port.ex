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

defmodule GoogleApi.Compute.V1.Model.NamedPort do
  @moduledoc """
  The named port. For example: .

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The port number, which can be a value between 1 and 65535.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :port => integer()
        }

  field(:name)
  field(:port)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NamedPort do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NamedPort.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NamedPort do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
