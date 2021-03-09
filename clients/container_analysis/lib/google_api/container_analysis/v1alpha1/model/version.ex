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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Version do
  @moduledoc """
  Version contains structured information about the version of the package. For a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/debian-packages-version-convention For a discussion of this in Redhat/Fedora/Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/

  ## Attributes

  *   `epoch` (*type:* `integer()`, *default:* `nil`) - Used to correct mistakes in the version numbering scheme.
  *   `inclusive` (*type:* `boolean()`, *default:* `nil`) - Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The main part of the version name.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The iteration of the package build from the above version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :epoch => integer() | nil,
          :inclusive => boolean() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :revision => String.t() | nil
        }

  field(:epoch)
  field(:inclusive)
  field(:kind)
  field(:name)
  field(:revision)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
