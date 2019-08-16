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

defmodule GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  @moduledoc """
  Deletes a conditional format rule at the given index.
  All subsequent rules' indexes are decremented.

  ## Attributes

  *   `index` (*type:* `integer()`, *default:* `nil`) - The zero-based index of the rule to be deleted.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The sheet the rule is being deleted from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer(),
          :sheetId => integer()
        }

  field(:index)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
