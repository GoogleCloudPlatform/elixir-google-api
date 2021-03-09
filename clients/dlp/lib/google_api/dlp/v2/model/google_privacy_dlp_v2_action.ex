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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  @moduledoc """
  A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.

  ## Attributes

  *   `jobNotificationEmails` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails.t`, *default:* `nil`) - Enable email notification for project owners and editors on job's completion/failure.
  *   `pubSub` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub.t`, *default:* `nil`) - Publish a notification to a pubsub topic.
  *   `publishFindingsToCloudDataCatalog` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.t`, *default:* `nil`) - Publish findings to Cloud Datahub.
  *   `publishSummaryToCscc` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc.t`, *default:* `nil`) - Publish summary to Cloud Security Command Center (Alpha).
  *   `publishToStackdriver` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToStackdriver.t`, *default:* `nil`) - Enable Stackdriver metric dlp.googleapis.com/finding_count.
  *   `saveFindings` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings.t`, *default:* `nil`) - Save resulting findings in a provided location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobNotificationEmails =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails.t() | nil,
          :pubSub => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub.t() | nil,
          :publishFindingsToCloudDataCatalog =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.t() | nil,
          :publishSummaryToCscc =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc.t() | nil,
          :publishToStackdriver =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToStackdriver.t() | nil,
          :saveFindings => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings.t() | nil
        }

  field(:jobNotificationEmails, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2JobNotificationEmails)

  field(:pubSub, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToPubSub)

  field(:publishFindingsToCloudDataCatalog,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
  )

  field(:publishSummaryToCscc, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishSummaryToCscc)
  field(:publishToStackdriver, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToStackdriver)
  field(:saveFindings, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SaveFindings)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
