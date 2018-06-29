# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.SourceMetadata do
  @moduledoc """
  Metadata about a Source useful for automatically optimizing and tuning the pipeline, etc.

  ## Attributes

  - estimatedSizeBytes (String.t): An estimate of the total size (in bytes) of the data that would be read from this source.  This estimate is in terms of external storage size, before any decompression or other processing done by the reader. Defaults to: `null`.
  - infinite (boolean()): Specifies that the size of this source is known to be infinite (this is a streaming source). Defaults to: `null`.
  - producesSortedKeys (boolean()): Whether this source is known to produce key/value pairs with the (encoded) keys in lexicographically sorted order. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :estimatedSizeBytes => any(),
          :infinite => any(),
          :producesSortedKeys => any()
        }

  field(:estimatedSizeBytes)
  field(:infinite)
  field(:producesSortedKeys)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SourceMetadata do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SourceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SourceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
