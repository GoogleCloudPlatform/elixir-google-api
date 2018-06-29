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

defmodule GoogleApi.Calendar.V3.Model.CalendarNotification do
  @moduledoc """


  ## Attributes

  - method (String.t): The method used to deliver the notification. Possible values are:   - \&quot;email\&quot; - Reminders are sent via email.  - \&quot;sms\&quot; - Reminders are sent via SMS. This value is read-only and is ignored on inserts and updates. SMS reminders are only available for G Suite customers. Defaults to: `null`.
  - type (String.t): The type of notification. Possible values are:   - \&quot;eventCreation\&quot; - Notification sent when a new event is put on the calendar.  - \&quot;eventChange\&quot; - Notification sent when an event is changed.  - \&quot;eventCancellation\&quot; - Notification sent when an event is cancelled.  - \&quot;eventResponse\&quot; - Notification sent when an event is changed.  - \&quot;agenda\&quot; - An agenda with the events of the day (sent out in the morning). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => any(),
          :type => any()
        }

  field(:method)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.CalendarNotification do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.CalendarNotification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.CalendarNotification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
