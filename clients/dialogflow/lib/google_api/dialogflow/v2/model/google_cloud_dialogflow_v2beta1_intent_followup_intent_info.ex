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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo do
  @moduledoc """
  Represents a single followup intent in the chain.

  ## Attributes

  - followupIntentName (String.t): The unique identifier of the followup intent. Format: &#x60;projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;&#x60;. Defaults to: `null`.
  - parentFollowupIntentName (String.t): The unique identifier of the followup intent&#39;s parent. Format: &#x60;projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :followupIntentName => any(),
          :parentFollowupIntentName => any()
        }

  field(:followupIntentName)
  field(:parentFollowupIntentName)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
