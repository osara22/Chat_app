App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#message-data').append data['message']; # 新しいメッセージを表示する

  speak: (message, room_id, user_id) -> # 下記のコードでspeakに入れたデータを受け取り
    @perform 'speak', message: message, room: room_id, user: user_id

  $(document).on 'keypress', '[chat-data-behavior~=room_speak]', (e) ->
    if e.keyCode is 13 # Enterキーを押すと発火
      App.room.speak e.target.value, $('#room_id').val(), $('#user_id').val() # speakに入力データを入れる送信する
      e.target.value = '' # テキストエリアのデータを消す
      e.preventDefault() # 元に戻す