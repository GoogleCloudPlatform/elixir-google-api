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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger do
  @moduledoc """
  What event needs to occur for a new job to be started.

  ## Attributes

  *   `manual` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Manual.t`, *default:* `nil`) - For use with hybrid jobs. Jobs must be manually created and finished.
  *   `schedule` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Schedule.t`, *default:* `nil`) - Create a job on a repeating basis based on the elapse of time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :manual => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Manual.t() | nil,
          :schedule => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Schedule.t() | nil
        }

  field(:manual, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Manual)
  field(:schedule, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Schedule)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
