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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger do
  @moduledoc """
  Contains a configuration to make dlp api calls on a repeating basis. See https://cloud.google.com/dlp/docs/concepts-job-triggers to learn more.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of a triggeredJob.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User provided description (max 256 chars)
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name (max 100 chars)
  *   `errors` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t)`, *default:* `nil`) - Output only. A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  *   `inspectJob` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t`, *default:* `nil`) - For inspect jobs, a snapshot of the configuration.
  *   `lastRunTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of the last time this trigger executed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Required. A status for this trigger.
  *   `triggers` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger.t)`, *default:* `nil`) - A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a triggeredJob.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :errors => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t()) | nil,
          :inspectJob => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig.t() | nil,
          :lastRunTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :status => String.t() | nil,
          :triggers => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:errors, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error, type: :list)
  field(:inspectJob, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectJobConfig)
  field(:lastRunTime, as: DateTime)
  field(:name)
  field(:status)
  field(:triggers, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Trigger, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
