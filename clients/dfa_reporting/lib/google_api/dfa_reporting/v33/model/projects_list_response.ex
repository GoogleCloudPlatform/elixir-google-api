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

defmodule GoogleApi.DFAReporting.V33.Model.ProjectsListResponse do
  @moduledoc """
  Project List Response

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dfareporting#projectsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#projectsListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Pagination token to be used for the next list operation.
  *   `projects` (*type:* `list(GoogleApi.DFAReporting.V33.Model.Project.t)`, *default:* `nil`) - Project collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :nextPageToken => String.t(),
          :projects => list(GoogleApi.DFAReporting.V33.Model.Project.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:projects, as: GoogleApi.DFAReporting.V33.Model.Project, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.ProjectsListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ProjectsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.ProjectsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
