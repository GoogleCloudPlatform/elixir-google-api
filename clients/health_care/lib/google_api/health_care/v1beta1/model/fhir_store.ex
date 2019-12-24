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

defmodule GoogleApi.HealthCare.V1beta1.Model.FhirStore do
  @moduledoc """
  Represents a FHIR store.

  ## Attributes

  *   `disableReferentialIntegrity` (*type:* `boolean()`, *default:* `nil`) - Whether to disable referential integrity in this FHIR store. This field is
      immutable after FHIR store creation.
      The default value is false, meaning that the API enforces referential
      integrity and fails the requests that result in inconsistent state in
      the FHIR store.
      When this field is set to true, the API skips referential integrity
      checks. Consequently, operations that rely on references, such as
      GetPatientEverything, do not return all the results if broken references
      exist.
  *   `disableResourceVersioning` (*type:* `boolean()`, *default:* `nil`) - Whether to disable resource versioning for this FHIR store. This field can
      not be changed after the creation of FHIR store.
      If set to false, which is the default behavior, all write operations
      cause historical versions to be recorded automatically. The historical
      versions can be fetched through the history APIs, but cannot be updated.
      If set to true, no historical versions are kept. The server sends
      errors for attempts to read the historical versions.
  *   `enableUpdateCreate` (*type:* `boolean()`, *default:* `nil`) - Whether this FHIR store has the [updateCreate
      capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
      This determines if the client can use an Update operation to create a new
      resource with a client-specified ID. If false, all IDs are server-assigned
      through the Create operation and attempts to update a non-existent resource
      return errors. Please treat the audit logs with appropriate levels of
      care if client-specified resource IDs contain sensitive data such as
      patient identifiers, those IDs are part of the FHIR resource path
      recorded in Cloud audit logs and Cloud Pub/Sub notifications.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-supplied key-value pairs used to organize FHIR stores.

      Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
      of maximum 128 bytes, and must conform to the
      following PCRE regular expression:
      \\p{Ll}\\p{Lo}{0,62}

      Label values are optional, must be between 1 and 63 characters long, have
      a UTF-8 encoding of maximum 128 bytes, and must conform to the
      following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}

      No more than 64 labels can be associated with a given store.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the FHIR store, of the form
      `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  *   `notificationConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.NotificationConfig.t`, *default:* `nil`) - If non-empty, publish all resource modifications of this FHIR store to
      this destination. The Cloud Pub/Sub message attributes contain a map
      with a string describing the action that has triggered the notification.
      For example, "action":"CreateResource".
  *   `version` (*type:* `String.t`, *default:* `nil`) - The FHIR specification version that this FHIR store supports natively. This
      field is immutable after store creation. Requests are rejected if they
      contain FHIR resources of a different version.
      An empty value is treated as STU3.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableReferentialIntegrity => boolean(),
          :disableResourceVersioning => boolean(),
          :enableUpdateCreate => boolean(),
          :labels => map(),
          :name => String.t(),
          :notificationConfig => GoogleApi.HealthCare.V1beta1.Model.NotificationConfig.t(),
          :version => String.t()
        }

  field(:disableReferentialIntegrity)
  field(:disableResourceVersioning)
  field(:enableUpdateCreate)
  field(:labels, type: :map)
  field(:name)
  field(:notificationConfig, as: GoogleApi.HealthCare.V1beta1.Model.NotificationConfig)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirStore do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.FhirStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
