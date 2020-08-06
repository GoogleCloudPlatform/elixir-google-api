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

defmodule GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository do
  @moduledoc """
  Represents a single yum package repository. These will be added to a repo
  file that will be managed at /etc/yum.repos.d/google_osconfig.repo.

  ## Attributes

  *   `baseUrl` (*type:* `String.t`, *default:* `nil`) - The location of the repository directory.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the repository.
  *   `gpgKeys` (*type:* `list(String.t)`, *default:* `nil`) - URIs of GPG keys.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A one word, unique name for this repository. This will be
      the `repo id` in the yum config file and also the `display_name` if
      `display_name` is omitted. This id is also used as the unique identifier
      when checking for resource conflicts.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseUrl => String.t(),
          :displayName => String.t(),
          :gpgKeys => list(String.t()),
          :id => String.t()
        }

  field(:baseUrl)
  field(:displayName)
  field(:gpgKeys, type: :list)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.RepositoryResourceYumRepository do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
