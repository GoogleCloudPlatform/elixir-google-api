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

defmodule GoogleApi.BigQueryReservation.V1.Model.ListReservationsResponse do
  @moduledoc """
  The response for ReservationService.ListReservations.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `reservations` (*type:* `list(GoogleApi.BigQueryReservation.V1.Model.Reservation.t)`, *default:* `nil`) - List of reservations visible to the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :reservations => list(GoogleApi.BigQueryReservation.V1.Model.Reservation.t()) | nil
        }

  field(:nextPageToken)
  field(:reservations, as: GoogleApi.BigQueryReservation.V1.Model.Reservation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.ListReservationsResponse do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.ListReservationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.ListReservationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
