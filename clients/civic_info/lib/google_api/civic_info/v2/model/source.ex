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

defmodule GoogleApi.CivicInfo.V2.Model.Source do
  @moduledoc """
  Contains information about the data source for the element containing it.

  ## Attributes

  - name (String.t): The name of the data source. Defaults to `nil`.
  - official (boolean()): Whether this data comes from an official government source. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :official => boolean()
        }

  field(:name)
  field(:official)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Source do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
