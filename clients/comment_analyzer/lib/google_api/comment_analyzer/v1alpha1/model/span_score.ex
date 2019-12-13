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

defmodule GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore do
  @moduledoc """
  This is a single score for a given span of text.

  ## Attributes

  *   `begin` (*type:* `integer()`, *default:* `nil`) - "begin" and "end" describe the span of the original text that the attribute
      score applies to. The values are the UTF-16 codepoint range. "end" is
      exclusive. For example, with the text "Hi there", the begin/end pair (0,2)
      describes the text "Hi".

      If "begin" and "end" are unset, the score applies to the full text.
  *   `end` (*type:* `integer()`, *default:* `nil`) - 
  *   `score` (*type:* `GoogleApi.CommentAnalyzer.V1alpha1.Model.Score.t`, *default:* `nil`) - The score value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin => integer(),
          :end => integer(),
          :score => GoogleApi.CommentAnalyzer.V1alpha1.Model.Score.t()
        }

  field(:begin)
  field(:end)
  field(:score, as: GoogleApi.CommentAnalyzer.V1alpha1.Model.Score)
end

defimpl Poison.Decoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore do
  def decode(value, options) do
    GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
