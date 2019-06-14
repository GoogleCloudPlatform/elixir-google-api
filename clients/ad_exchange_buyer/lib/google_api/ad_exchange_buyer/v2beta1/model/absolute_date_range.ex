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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.AbsoluteDateRange do
  @moduledoc """
  An absolute date range, specified by its start date and end date.
  The supported range of dates begins 30 days before today and ends today.
  Validity checked upon filter set creation. If a filter set with an absolute
  date range is run at a later date more than 30 days after start_date, it will
  fail.

  ## Attributes

  - endDate (GoogleApi.AdExchangeBuyer.V2beta1.Model.Date.t): The end date of the range (inclusive).
  Must be within the 30 days leading up to current date, and must be equal to
  or after start_date. Defaults to `nil`.
  - startDate (GoogleApi.AdExchangeBuyer.V2beta1.Model.Date.t): The start date of the range (inclusive).
  Must be within the 30 days leading up to current date, and must be equal to
  or before end_date. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => GoogleApi.AdExchangeBuyer.V2beta1.Model.Date.t(),
          :startDate => GoogleApi.AdExchangeBuyer.V2beta1.Model.Date.t()
        }

  field(:endDate, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Date)
  field(:startDate, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Date)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.AbsoluteDateRange do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.AbsoluteDateRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.AbsoluteDateRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
