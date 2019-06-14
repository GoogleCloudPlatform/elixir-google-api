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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListClientsResponse do
  @moduledoc """


  ## Attributes

  - clients (list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Client.t)): The returned list of clients. Defaults to `nil`.
  - nextPageToken (String.t): A token to retrieve the next page of results.
  Pass this value in the
  ListClientsRequest.pageToken
  field in the subsequent call to the
  accounts.clients.list
  method to retrieve the next page of results. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clients => list(GoogleApi.AdExchangeBuyer.V2beta1.Model.Client.t()),
          :nextPageToken => String.t()
        }

  field(:clients, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Client, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListClientsResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListClientsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListClientsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
