# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.HealthCare.V1.Model.NotificationConfig do
  @moduledoc """
  Specifies where to send notifications upon changes to a data store.

  ## Attributes

  *   `pubsubTopic` (*type:* `String.t`, *default:* `nil`) - The [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that notifications of changes are published on. Supplied by the client. PubsubMessage.Data contains the resource name. PubsubMessage.MessageId is the ID of this message. It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message was published. Notifications are only sent if the topic is non-empty. [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped to a project. Cloud Healthcare API service account must have publisher permissions on the given Cloud Pub/Sub topic. Not having adequate permissions causes the calls that send notifications to fail. If a notification can't be published to Cloud Pub/Sub, errors are logged to Cloud Logging (see [Viewing logs](/healthcare/docs/how-tos/logging)). If the number of errors exceeds a certain rate, some aren't submitted. Note that not all operations trigger notifications, see [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub) for specific details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pubsubTopic => String.t() | nil
        }

  field(:pubsubTopic)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.NotificationConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.NotificationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.NotificationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
