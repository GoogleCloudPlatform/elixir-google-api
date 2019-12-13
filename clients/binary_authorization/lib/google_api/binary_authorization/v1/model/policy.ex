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

defmodule GoogleApi.BinaryAuthorization.V1.Model.Policy do
  @moduledoc """
  A policy for container image binary authorization.

  ## Attributes

  *   `admissionWhitelistPatterns` (*type:* `list(GoogleApi.BinaryAuthorization.V1.Model.AdmissionWhitelistPattern.t)`, *default:* `nil`) - Optional. Admission policy whitelisting. A matching admission request will
      always be permitted. This feature is typically used to exclude Google or
      third-party infrastructure images from Binary Authorization policies.
  *   `clusterAdmissionRules` (*type:* `%{optional(String.t) => GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule.t}`, *default:* `nil`) - Optional. Per-cluster admission rules. Cluster spec format:
      `location.clusterId`. There can be at most one admission rule per cluster
      spec.
      A `location` is either a compute zone (e.g. us-central1-a) or a region
      (e.g. us-central1).
      For `clusterId` syntax restrictions see
      https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.clusters.
  *   `defaultAdmissionRule` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule.t`, *default:* `nil`) - Required. Default admission rule for a cluster without a per-cluster, per-
      kubernetes-service-account, or per-istio-service-identity admission rule.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A descriptive comment.
  *   `globalPolicyEvaluationMode` (*type:* `String.t`, *default:* `nil`) - Optional. Controls the evaluation of a Google-maintained global admission
      policy for common system-level images. Images not covered by the global
      policy will be subject to the project admission policy. This setting
      has no effect when specified inside a global admission policy.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name, in the format `projects/*/policy`. There is
      at most one policy per project.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the policy was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :admissionWhitelistPatterns =>
            list(GoogleApi.BinaryAuthorization.V1.Model.AdmissionWhitelistPattern.t()),
          :clusterAdmissionRules => %{
            optional(String.t()) => GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule.t()
          },
          :defaultAdmissionRule => GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule.t(),
          :description => String.t(),
          :globalPolicyEvaluationMode => String.t(),
          :name => String.t(),
          :updateTime => DateTime.t()
        }

  field(:admissionWhitelistPatterns,
    as: GoogleApi.BinaryAuthorization.V1.Model.AdmissionWhitelistPattern,
    type: :list
  )

  field(:clusterAdmissionRules,
    as: GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule,
    type: :map
  )

  field(:defaultAdmissionRule, as: GoogleApi.BinaryAuthorization.V1.Model.AdmissionRule)
  field(:description)
  field(:globalPolicyEvaluationMode)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
