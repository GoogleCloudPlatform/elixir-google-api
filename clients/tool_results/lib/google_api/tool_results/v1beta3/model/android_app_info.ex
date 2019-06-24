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

defmodule GoogleApi.ToolResults.V1beta3.Model.AndroidAppInfo do
  @moduledoc """
  Android app information.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the app. Optional
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name of the app. Required.
  *   `versionCode` (*type:* `String.t`, *default:* `nil`) - The internal version code of the app. Optional.
  *   `versionName` (*type:* `String.t`, *default:* `nil`) - The version name of the app. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :packageName => String.t(),
          :versionCode => String.t(),
          :versionName => String.t()
        }

  field(:name)
  field(:packageName)
  field(:versionCode)
  field(:versionName)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.AndroidAppInfo do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.AndroidAppInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.AndroidAppInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
