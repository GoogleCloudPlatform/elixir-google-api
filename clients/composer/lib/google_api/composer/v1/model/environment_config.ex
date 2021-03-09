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

defmodule GoogleApi.Composer.V1.Model.EnvironmentConfig do
  @moduledoc """
  Configuration information for an environment.

  ## Attributes

  *   `airflowUri` (*type:* `String.t`, *default:* `nil`) - Output only. The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow web interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  *   `dagGcsPrefix` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using "/"-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix.
  *   `databaseConfig` (*type:* `GoogleApi.Composer.V1.Model.DatabaseConfig.t`, *default:* `nil`) - Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  *   `encryptionConfig` (*type:* `GoogleApi.Composer.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  *   `gkeCluster` (*type:* `String.t`, *default:* `nil`) - Output only. The Kubernetes Engine cluster used to run this environment.
  *   `nodeConfig` (*type:* `GoogleApi.Composer.V1.Model.NodeConfig.t`, *default:* `nil`) - The configuration used for the Kubernetes Engine cluster.
  *   `nodeCount` (*type:* `integer()`, *default:* `nil`) - The number of nodes in the Kubernetes Engine cluster that will be used to run this environment.
  *   `privateEnvironmentConfig` (*type:* `GoogleApi.Composer.V1.Model.PrivateEnvironmentConfig.t`, *default:* `nil`) - The configuration used for the Private IP Cloud Composer environment.
  *   `softwareConfig` (*type:* `GoogleApi.Composer.V1.Model.SoftwareConfig.t`, *default:* `nil`) - The configuration settings for software inside the environment.
  *   `webServerConfig` (*type:* `GoogleApi.Composer.V1.Model.WebServerConfig.t`, *default:* `nil`) - Optional. The configuration settings for the Airflow web server App Engine instance.
  *   `webServerNetworkAccessControl` (*type:* `GoogleApi.Composer.V1.Model.WebServerNetworkAccessControl.t`, *default:* `nil`) - Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :airflowUri => String.t() | nil,
          :dagGcsPrefix => String.t() | nil,
          :databaseConfig => GoogleApi.Composer.V1.Model.DatabaseConfig.t() | nil,
          :encryptionConfig => GoogleApi.Composer.V1.Model.EncryptionConfig.t() | nil,
          :gkeCluster => String.t() | nil,
          :nodeConfig => GoogleApi.Composer.V1.Model.NodeConfig.t() | nil,
          :nodeCount => integer() | nil,
          :privateEnvironmentConfig =>
            GoogleApi.Composer.V1.Model.PrivateEnvironmentConfig.t() | nil,
          :softwareConfig => GoogleApi.Composer.V1.Model.SoftwareConfig.t() | nil,
          :webServerConfig => GoogleApi.Composer.V1.Model.WebServerConfig.t() | nil,
          :webServerNetworkAccessControl =>
            GoogleApi.Composer.V1.Model.WebServerNetworkAccessControl.t() | nil
        }

  field(:airflowUri)
  field(:dagGcsPrefix)
  field(:databaseConfig, as: GoogleApi.Composer.V1.Model.DatabaseConfig)
  field(:encryptionConfig, as: GoogleApi.Composer.V1.Model.EncryptionConfig)
  field(:gkeCluster)
  field(:nodeConfig, as: GoogleApi.Composer.V1.Model.NodeConfig)
  field(:nodeCount)
  field(:privateEnvironmentConfig, as: GoogleApi.Composer.V1.Model.PrivateEnvironmentConfig)
  field(:softwareConfig, as: GoogleApi.Composer.V1.Model.SoftwareConfig)
  field(:webServerConfig, as: GoogleApi.Composer.V1.Model.WebServerConfig)

  field(:webServerNetworkAccessControl,
    as: GoogleApi.Composer.V1.Model.WebServerNetworkAccessControl
  )
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.EnvironmentConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.EnvironmentConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.EnvironmentConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
