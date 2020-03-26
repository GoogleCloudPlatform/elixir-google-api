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

defmodule GoogleApi.Directory.Directory_v1.Model.Token do
  @moduledoc """
  JSON template for token resource in Directory API.

  ## Attributes
  
  *   `anonymous` (*type:* `boolean()`, *default:* `nil`) - Whether the application is registered with Google. The value is true if the application has an anonymous Client ID.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The Client ID of the application the token is issued to.
  *   `displayText` (*type:* `String.t`, *default:* `nil`) - The displayable name of the application the token is issued to.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#token`) - The type of the API resource. This is always admin#directory#token.
  *   `nativeApp` (*type:* `boolean()`, *default:* `nil`) - Whether the token is issued to an installed application. The value is true if the application is installed to a desktop or mobile device.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - A list of authorization scopes the application is granted.
  *   `userKey` (*type:* `String.t`, *default:* `nil`) - The unique ID of the user that issued the token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"anonymous" => boolean(),
    
      :"clientId" => String.t,
    
      :"displayText" => String.t,
    
      :"etag" => String.t,
    
      :"kind" => String.t,
    
      :"nativeApp" => boolean(),
    
      :"scopes" => list(String.t),
    
      :"userKey" => String.t,
    
  }
  
  field(:"anonymous")
  field(:"clientId")
  field(:"displayText")
  field(:"etag")
  field(:"kind")
  field(:"nativeApp")
  field(:"scopes", type: :list)
  field(:"userKey")
end

defimpl Poison.Decoder, for: GoogleApi.Directory.Directory_v1.Model.Token do
  def decode(value, options) do
    GoogleApi.Directory.Directory_v1.Model.Token.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Directory.Directory_v1.Model.Token do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
