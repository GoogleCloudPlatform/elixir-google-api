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

defmodule GoogleApi.BigQuery.V2.Model.EvaluationMetrics do
  @moduledoc """
  Evaluation metrics of a model. These are either computed on all training
  data or just the eval data based on whether eval data was used during
  training. These are not present for imported models.

  ## Attributes

  *   `binaryClassificationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics.t`, *default:* `nil`) - Populated for binary classification/classifier models.
  *   `clusteringMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.ClusteringMetrics.t`, *default:* `nil`) - Populated for clustering models.
  *   `multiClassClassificationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics.t`, *default:* `nil`) - Populated for multi-class classification/classifier models.
  *   `rankingMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.RankingMetrics.t`, *default:* `nil`) - [Alpha] Populated for implicit feedback type matrix factorization
      models.
  *   `regressionMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.RegressionMetrics.t`, *default:* `nil`) - Populated for regression models and explicit feedback type matrix
      factorization models.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryClassificationMetrics =>
            GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics.t(),
          :clusteringMetrics => GoogleApi.BigQuery.V2.Model.ClusteringMetrics.t(),
          :multiClassClassificationMetrics =>
            GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics.t(),
          :rankingMetrics => GoogleApi.BigQuery.V2.Model.RankingMetrics.t(),
          :regressionMetrics => GoogleApi.BigQuery.V2.Model.RegressionMetrics.t()
        }

  field(:binaryClassificationMetrics, as: GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics)
  field(:clusteringMetrics, as: GoogleApi.BigQuery.V2.Model.ClusteringMetrics)

  field(:multiClassClassificationMetrics,
    as: GoogleApi.BigQuery.V2.Model.MultiClassClassificationMetrics
  )

  field(:rankingMetrics, as: GoogleApi.BigQuery.V2.Model.RankingMetrics)
  field(:regressionMetrics, as: GoogleApi.BigQuery.V2.Model.RegressionMetrics)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.EvaluationMetrics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.EvaluationMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.EvaluationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
