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

defmodule GoogleApi.Classroom.V1.Model.ListTopicResponse do
  @moduledoc """
  Response when listing topics.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token identifying the next page of results to return. If empty, no further
      results are available.
  *   `topic` (*type:* `list(GoogleApi.Classroom.V1.Model.Topic.t)`, *default:* `nil`) - Topic items that match the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :topic => list(GoogleApi.Classroom.V1.Model.Topic.t())
        }

  field(:nextPageToken)
  field(:topic, as: GoogleApi.Classroom.V1.Model.Topic, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.ListTopicResponse do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.ListTopicResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.ListTopicResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
