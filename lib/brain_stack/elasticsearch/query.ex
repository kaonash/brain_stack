defmodule BrainStack.ElasticSearch.Query do
  alias BrainStack.ElasticSearch
  import Tirexs.Bulk

  def insert(item) do
    settings = ElasticSearch.config
    Tirexs.Bulk.store [index: "item", refresh: true], settings do
      create title: item.title, text: item.text
    end
  end

  def search(criteria) do

  end
end
