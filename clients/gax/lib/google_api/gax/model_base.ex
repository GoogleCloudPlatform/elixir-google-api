# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Gax.ModelBase do
  @moduledoc """
  This module helps you quickly and concisely define API models.

  Example:

      defmodule Pet do
        use GoogleApi.Gax.ModelBase

        field(:id)
        field(:category, as: Category)
        field(:tags, as: Tag, type: :list)
      end
  """
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)

      @fields []

      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      defstruct Keyword.keys(@fields)

      @doc """
      Unwrap a decoded JSON object into its complex fields.
      """
      @spec decode(struct(), keyword()) :: struct()
      def decode(value, _options) do
        Enum.reduce(@fields, value, fn {field_name, opts}, v ->
          if struct = Keyword.get(opts, :as) do
            Map.update!(v, field_name, fn current ->
              type = Keyword.get(opts, :type, :primitive)
              struct = Keyword.get(opts, :as)
              GoogleApi.Gax.ModelBase.decode(current, type, struct)
            end)
          else
            v
          end
        end)
      end
    end
  end

  defmacro field(field_name, opts \\ []) do
    quote do
      @fields [{unquote(field_name), unquote(opts)} | @fields]
    end
  end

  @doc """
  Helper to decode model fields
  """
  @spec decode(struct(), :list | :primitive, nil | module()) :: struct()
  def decode(value, _, nil) do
    value
  end

  def decode(value, :list, module) do
    Poison.Decode.decode(value, as: [struct(module)])
  end

  def decode(value, _, module) do
    Poison.Decode.decode(value, as: struct(module))
  end

  @doc """
  Helper to encode model into JSON
  """
  @spec encode(struct(), keyword()) :: String.t()
  def encode(value, options) do
    value
    |> Map.from_struct
    |> Enum.filter(fn {_k, v} -> v != nil end)
    |> Enum.into(%{})
    |> Poison.Encoder.encode(options)
  end
end
