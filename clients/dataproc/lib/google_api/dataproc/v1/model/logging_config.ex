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

defmodule GoogleApi.Dataproc.V1.Model.LoggingConfig do
  @moduledoc """
  The runtime logging config of the job.

  ## Attributes

  - driverLogLevels (map()): The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples:  'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :driverLogLevels => map()
        }

  field(:driverLogLevels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.LoggingConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.LoggingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.LoggingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
