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

defmodule GoogleApi.Directory.Directory_v1.Model.Users do
  @moduledoc """
  JSON response template for List Users operation in Apps Directory API.

  ## Attributes
  
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#users`) - Kind of resource this is.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token used to access next page of this result.
  *   `trigger_event` (*type:* `String.t`, *default:* `nil`) - Event that triggered this response (only used in case of Push Response)
  *   `users` (*type:* `list(GoogleApi.Directory.Directory_v1.Model.User.t)`, *default:* `nil`) - List of user objects.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"etag" => String.t,
    
      :"kind" => String.t,
    
      :"nextPageToken" => String.t,
    
      :"trigger_event" => String.t,
    
      :"users" => list(GoogleApi.Directory.Directory_v1.Model.User.t),
    
  }
  
  field(:"etag")
  field(:"kind")
  field(:"nextPageToken")
  field(:"trigger_event")
  field(:"users", as: GoogleApi.Directory.Directory_v1.Model.User, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Directory.Directory_v1.Model.Users do
  def decode(value, options) do
    GoogleApi.Directory.Directory_v1.Model.Users.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Directory.Directory_v1.Model.Users do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
