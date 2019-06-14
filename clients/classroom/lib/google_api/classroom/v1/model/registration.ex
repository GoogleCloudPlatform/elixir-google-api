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

defmodule GoogleApi.Classroom.V1.Model.Registration do
  @moduledoc """
  An instruction to Classroom to send notifications from the `feed` to the
  provided destination.

  ## Attributes

  - cloudPubsubTopic (GoogleApi.Classroom.V1.Model.CloudPubsubTopic.t): The Cloud Pub/Sub topic that notifications are to be sent to. Defaults to `nil`.
  - expiryTime (DateTime.t): The time until which the `Registration` is effective.

  This is a read-only field assigned by the server. Defaults to `nil`.
  - feed (GoogleApi.Classroom.V1.Model.Feed.t): Specification for the class of notifications that Classroom should deliver
  to the destination. Defaults to `nil`.
  - registrationId (String.t): A server-generated unique identifier for this `Registration`.

  Read-only. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudPubsubTopic => GoogleApi.Classroom.V1.Model.CloudPubsubTopic.t(),
          :expiryTime => DateTime.t(),
          :feed => GoogleApi.Classroom.V1.Model.Feed.t(),
          :registrationId => String.t()
        }

  field(:cloudPubsubTopic, as: GoogleApi.Classroom.V1.Model.CloudPubsubTopic)
  field(:expiryTime, as: DateTime)
  field(:feed, as: GoogleApi.Classroom.V1.Model.Feed)
  field(:registrationId)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Registration do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Registration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Registration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
