defmodule Urlshorten do
  @moduledoc """
  Documentation for Urlshorten.
  """

  @doc """
  main function from module.
  """
  def main(args) do
    # {parsed, argv, errors} = OptionParser.parse(args)
    {_, argv, _} = OptionParser.parse(args)
    hash = List.first(argv)
    |> create_short()
    |> get_smaller_hash(6)
    i shortenUrl = "http://this.site.com/" <> hash
  end

  defp create_short(url) do
    :crypto.hash(:md5, url) |> Base.encode16(case: :lower)
  end

  defp get_smaller_hash(hash, size) do
    List.first(Tuple.to_list(String.split_at(hash, size)))
  end

  defp i(o) do
    IO.inspect o
  end
end
