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

defmodule GoogleApi.Classroom.V1.Model.DriveFolder do
  @moduledoc """
  Representation of a Google Drive folder.

  ## Attributes

  - alternateLink (String.t): URL that can be used to access the Drive folder.

  Read-only. Defaults to `nil`.
  - id (String.t): Drive API resource ID. Defaults to `nil`.
  - title (String.t): Title of the Drive folder.

  Read-only. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => String.t(),
          :id => String.t(),
          :title => String.t()
        }

  field(:alternateLink)
  field(:id)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.DriveFolder do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.DriveFolder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.DriveFolder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
