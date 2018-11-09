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

defmodule GoogleApi.TaskQueue.V1beta2.Model.Tasks do
  @moduledoc """


  ## Attributes

  - items (List[Task]): The actual list of tasks returned as a result of the lease operation. Defaults to: `null`.
  - kind (String): The kind of object returned, a list of tasks. Defaults to: `null`.
  """

  defstruct [
    :items,
    :kind
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TaskQueue.V1beta2.Model.Tasks do
  import GoogleApi.TaskQueue.V1beta2.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:items, :list, GoogleApi.TaskQueue.V1beta2.Model.Task, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TaskQueue.V1beta2.Model.Tasks do
  def encode(value, options) do
    GoogleApi.TaskQueue.V1beta2.Deserializer.serialize_non_nil(value, options)
  end
end
