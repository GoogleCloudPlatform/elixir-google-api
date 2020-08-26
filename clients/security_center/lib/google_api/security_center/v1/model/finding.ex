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

defmodule GoogleApi.SecurityCenter.V1.Model.Finding do
  @moduledoc """
  Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: "XSS_FLASH_INJECTION"
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the finding was created in Security Command Center.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the event took place, or when an update to the finding occurred. For example, if the finding represents an open firewall it would capture the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding were to be resolved afterward, this time would reflect when the finding was resolved.
  *   `externalUri` (*type:* `String.t`, *default:* `nil`) - The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}"
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the source the finding belongs to. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name This field is immutable after creation time. For example: "organizations/{organization_id}/sources/{source_id}"
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https://cloud.google.com/apis/design/resource_names#full_resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.
  *   `securityMarks` (*type:* `GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t`, *default:* `nil`) - Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.
  *   `sourceProperties` (*type:* `map()`, *default:* `nil`) - Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the finding.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t(),
          :createTime => DateTime.t(),
          :eventTime => DateTime.t(),
          :externalUri => String.t(),
          :name => String.t(),
          :parent => String.t(),
          :resourceName => String.t(),
          :securityMarks => GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t(),
          :sourceProperties => map(),
          :state => String.t()
        }

  field(:category)
  field(:createTime, as: DateTime)
  field(:eventTime, as: DateTime)
  field(:externalUri)
  field(:name)
  field(:parent)
  field(:resourceName)
  field(:securityMarks, as: GoogleApi.SecurityCenter.V1.Model.SecurityMarks)
  field(:sourceProperties, type: :map)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Finding do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Finding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Finding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
