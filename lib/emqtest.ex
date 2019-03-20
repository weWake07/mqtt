defmodule EMQTEST do
  @moduledoc """
  Documentation for EMQTEST.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EMQTEST.hello()
      :world

  """
  def hello do
    :world
  end

"""
Tortoise.Connection.start_link(
client_id: Hello,
server: {Tortoise.Transport.Tcp, host: "localhost", port: 1883},
handler: {Tortoise.Handler.Logger, []})
"""
"""

@spec start_link(options, GenServer.options()) :: GenServer.on_start()
      when option:
             {:client_id, Tortoise.client_id()}
             | {:user_name, String.t()}
             | {:password, String.t()}
             | {:keep_alive, non_neg_integer()}
             | {:will, Tortoise.Package.Publish.t()}
             | {:subscriptions,
                [{Tortoise.topic_filter(), Tortoise.qos()}] | Tortoise.Package.Subscribe.t()}
             | {:handler, {atom(), term()}},
           options: [option]
"""

  def mqttConnection(clientID, 1) do
    {ok, pid} = Tortoise.Connection.start_link(client_id: clientID, server: {Tortoise.Transport.Tcp, host: "localhost", port: 1883}, handler: {Tortoise.Handler.Logger, []})
    #{ok, pid} =Tortoise.Connection.start_link(client_id: World, server: {Tortoise.Transport.Tcp, host: "localhost", port: 1883}, handler: {Tortoise.Handler.Logger, []})
  end

  def mqttConnection(clientID, count) do
    str = to_string(count)
    newClientID = clientID <> str
    {ok, pid} = Tortoise.Connection.start_link(client_id: newClientID, server: {Tortoise.Transport.Tcp, host: "localhost", port: 1883}, handler: {Tortoise.Handler.Logger, []})
    mqttConnection(clientID, count - 1)
  end

end
