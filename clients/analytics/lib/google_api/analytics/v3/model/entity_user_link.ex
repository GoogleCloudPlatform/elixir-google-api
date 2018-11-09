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

defmodule GoogleApi.Analytics.V3.Model.EntityUserLink do
  @moduledoc """
  JSON template for an Analytics Entity-User Link. Returns permissions that a user has for an entity.

  ## Attributes

  - entity (EntityUserLinkEntity):  Defaults to: `null`.
  - id (String.t): Entity user link ID Defaults to: `null`.
  - kind (String.t): Resource type for entity user link. Defaults to: `null`.
  - permissions (EntityUserLinkPermissions):  Defaults to: `null`.
  - selfLink (String.t): Self link for this resource. Defaults to: `null`.
  - userRef (UserRef): User reference. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entity => GoogleApi.Analytics.V3.Model.EntityUserLinkEntity.t(),
          :id => any(),
          :kind => any(),
          :permissions => GoogleApi.Analytics.V3.Model.EntityUserLinkPermissions.t(),
          :selfLink => any(),
          :userRef => GoogleApi.Analytics.V3.Model.UserRef.t()
        }

  field(:entity, as: GoogleApi.Analytics.V3.Model.EntityUserLinkEntity)
  field(:id)
  field(:kind)
  field(:permissions, as: GoogleApi.Analytics.V3.Model.EntityUserLinkPermissions)
  field(:selfLink)
  field(:userRef, as: GoogleApi.Analytics.V3.Model.UserRef)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.EntityUserLink do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.EntityUserLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.EntityUserLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
