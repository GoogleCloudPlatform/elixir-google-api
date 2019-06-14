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

defmodule GoogleApi.ToolResults.V1beta3.Model.ScreenshotCluster do
  @moduledoc """


  ## Attributes

  - activity (String.t): A string that describes the activity of every screen in the cluster. Defaults to `nil`.
  - clusterId (String.t): A unique identifier for the cluster. Defaults to `nil`.
  - keyScreen (GoogleApi.ToolResults.V1beta3.Model.Screen.t): A singular screen that represents the cluster as a whole. This screen will act as the "cover" of the entire cluster. When users look at the clusters, only the key screen from each cluster will be shown. Which screen is the key screen is determined by the ClusteringAlgorithm Defaults to `nil`.
  - screens (list(GoogleApi.ToolResults.V1beta3.Model.Screen.t)): Full list of screens. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activity => String.t(),
          :clusterId => String.t(),
          :keyScreen => GoogleApi.ToolResults.V1beta3.Model.Screen.t(),
          :screens => list(GoogleApi.ToolResults.V1beta3.Model.Screen.t())
        }

  field(:activity)
  field(:clusterId)
  field(:keyScreen, as: GoogleApi.ToolResults.V1beta3.Model.Screen)
  field(:screens, as: GoogleApi.ToolResults.V1beta3.Model.Screen, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ScreenshotCluster do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.ScreenshotCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ScreenshotCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
