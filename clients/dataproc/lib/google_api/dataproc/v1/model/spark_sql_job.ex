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

defmodule GoogleApi.Dataproc.V1.Model.SparkSqlJob do
  @moduledoc """
  A Cloud Dataproc job for running Apache Spark SQL (http://spark.apache.org/sql/) queries.

  ## Attributes

  *   `jarFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  *   `loggingConfig` (*type:* `GoogleApi.Dataproc.V1.Model.LoggingConfig.t`, *default:* `nil`) - Optional. The runtime log config for job execution.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten.
  *   `queryFileUri` (*type:* `String.t`, *default:* `nil`) - The HCFS URI of the script that contains SQL queries.
  *   `queryList` (*type:* `GoogleApi.Dataproc.V1.Model.QueryList.t`, *default:* `nil`) - A list of queries.
  *   `scriptVariables` (*type:* `map()`, *default:* `nil`) - Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jarFileUris => list(String.t()),
          :loggingConfig => GoogleApi.Dataproc.V1.Model.LoggingConfig.t(),
          :properties => map(),
          :queryFileUri => String.t(),
          :queryList => GoogleApi.Dataproc.V1.Model.QueryList.t(),
          :scriptVariables => map()
        }

  field(:jarFileUris, type: :list)
  field(:loggingConfig, as: GoogleApi.Dataproc.V1.Model.LoggingConfig)
  field(:properties, type: :map)
  field(:queryFileUri)
  field(:queryList, as: GoogleApi.Dataproc.V1.Model.QueryList)
  field(:scriptVariables, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.SparkSqlJob do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SparkSqlJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.SparkSqlJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
