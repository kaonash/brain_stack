defmodule BrainStack.ElasticSearch do
  import Tirexs.Bulk
  import Tirexs.Search
  require Tirexs.ElasticSearch

  def config() do
    opts = Application.get_env(:brain_stack, __MODULE__)
    es_hostname = opts[:es_hostname]
    es_port = opts[:es_port]
    Tirexs.ElasticSearch.config("http://#{es_hostname}:#{es_port}/")
  end

  def insert(settings, index, records) do

  end
end
