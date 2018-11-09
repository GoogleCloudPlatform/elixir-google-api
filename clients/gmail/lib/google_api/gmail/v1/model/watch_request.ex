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

defmodule GoogleApi.Gmail.V1.Model.WatchRequest do
  @moduledoc """
  Set up or update a new push notification watch on this user&#39;s mailbox.

  ## Attributes

  - labelFilterAction (String.t): Filtering behavior of labelIds list specified. Defaults to: `null`.
    - Enum - one of [exclude, include]
  - labelIds ([String.t]): List of label_ids to restrict notifications about. By default, if unspecified, all changes are pushed out. If specified then dictates which labels are required for a push notification to be generated. Defaults to: `null`.
  - topicName (String.t): A fully qualified Google Cloud Pub/Sub API topic name to publish the events to. This topic name **must** already exist in Cloud Pub/Sub and you **must** have already granted gmail \&quot;publish\&quot; permission on it. For example, \&quot;projects/my-project-identifier/topics/my-topic-name\&quot; (using the Cloud Pub/Sub \&quot;v1\&quot; topic naming format).  Note that the \&quot;my-project-identifier\&quot; portion must exactly match your Google developer project id (the one executing this watch request). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelFilterAction => any(),
          :labelIds => list(any()),
          :topicName => any()
        }

  field(:labelFilterAction)
  field(:labelIds, type: :list)
  field(:topicName)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.WatchRequest do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.WatchRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.WatchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
