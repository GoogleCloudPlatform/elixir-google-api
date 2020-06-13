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

defmodule GoogleApi.Dataproc.V1.Model.PySparkJob do
  @moduledoc """
  A Dataproc job for running Apache PySpark (https://spark.apache.org/docs/0.9.0/python-programming-guide.html) applications on YARN.

  ## Attributes

  *   `archiveUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip.
  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  *   `fileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks.
  *   `jarFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks.
  *   `loggingConfig` (*type:* `GoogleApi.Dataproc.V1.Model.LoggingConfig.t`, *default:* `nil`) - Optional. The runtime log config for job execution.
  *   `mainPythonFileUri` (*type:* `String.t`, *default:* `nil`) - Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code.
  *   `pythonFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveUris => list(String.t()),
          :args => list(String.t()),
          :fileUris => list(String.t()),
          :jarFileUris => list(String.t()),
          :loggingConfig => GoogleApi.Dataproc.V1.Model.LoggingConfig.t(),
          :mainPythonFileUri => String.t(),
          :properties => map(),
          :pythonFileUris => list(String.t())
        }

  field(:archiveUris, type: :list)
  field(:args, type: :list)
  field(:fileUris, type: :list)
  field(:jarFileUris, type: :list)
  field(:loggingConfig, as: GoogleApi.Dataproc.V1.Model.LoggingConfig)
  field(:mainPythonFileUri)
  field(:properties, type: :map)
  field(:pythonFileUris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.PySparkJob do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.PySparkJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.PySparkJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
