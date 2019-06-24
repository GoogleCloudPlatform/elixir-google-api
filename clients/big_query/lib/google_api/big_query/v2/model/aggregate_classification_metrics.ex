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

defmodule GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics do
  @moduledoc """
  Aggregate metrics for classification/classifier models. For multi-class
  models, the metrics are either macro-averaged or micro-averaged. When
  macro-averaged, the metrics are calculated for each label and then an
  unweighted average is taken of those values. When micro-averaged, the
  metric is calculated globally by counting the total number of correctly
  predicted rows.

  ## Attributes

  *   `accuracy` (*type:* `float()`, *default:* `nil`) - Accuracy is the fraction of predictions given the correct label. For
      multiclass this is a micro-averaged metric.
  *   `f1Score` (*type:* `float()`, *default:* `nil`) - The F1 score is an average of recall and precision. For multiclass
      this is a macro-averaged metric.
  *   `logLoss` (*type:* `float()`, *default:* `nil`) - Logarithmic Loss. For multiclass this is a macro-averaged metric.
  *   `precision` (*type:* `float()`, *default:* `nil`) - Precision is the fraction of actual positive predictions that had
      positive actual labels. For multiclass this is a macro-averaged
      metric treating each class as a binary classifier.
  *   `recall` (*type:* `float()`, *default:* `nil`) - Recall is the fraction of actual positive labels that were given a
      positive prediction. For multiclass this is a macro-averaged metric.
  *   `rocAuc` (*type:* `float()`, *default:* `nil`) - Area Under a ROC Curve. For multiclass this is a macro-averaged
      metric.
  *   `threshold` (*type:* `float()`, *default:* `nil`) - Threshold at which the metrics are computed. For binary
      classification models this is the positive class threshold.
      For multi-class classfication models this is the confidence
      threshold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracy => float(),
          :f1Score => float(),
          :logLoss => float(),
          :precision => float(),
          :recall => float(),
          :rocAuc => float(),
          :threshold => float()
        }

  field(:accuracy)
  field(:f1Score)
  field(:logLoss)
  field(:precision)
  field(:recall)
  field(:rocAuc)
  field(:threshold)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
