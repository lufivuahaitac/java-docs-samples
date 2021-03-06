<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
 Copyright 2016 Google Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <%@ include file="firebase_config.jspf" %>
    <link rel="stylesheet" type="text/css" href="static/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="static/main.js"></script>
    <script>
      initGame('<%= request.getAttribute("game_key") %>', '<%= request.getAttribute("me") %>',
               '<%= request.getAttribute("token") %>', '<%= request.getAttribute("channel_id") %>',
               <%= request.getAttribute("initial_message") %>);
    </script>
  </head>
  <body>
    <div id="display-area" class="waiting">
      <h2>Firebase-enabled Tic Tac Toe</h2>
      <div id="other-player">
        Send the other player this link to play, and click link below to wait on the other player:<br>
        <div id="game-link"><a href="<%= request.getAttribute("game_link") %>"><%= request.getAttribute("game_link") %></a></div>
      </div>
      <div id="your-move">Your move! Click a square to place your piece.</div>
      <div id="their-move">Waiting for other player to move...</div>
      <div id="you-won">You won this game!</div>
      <div id="you-lost">You lost this game.</div>
      <div id="board">
        <div class="t l cell" id="0"></div>
        <div class="t c cell" id="1"></div>
        <div class="t r cell" id="2"></div>
        <div class="m l cell" id="3"></div>
        <div class="m c cell" id="4"></div>
        <div class="m r cell" id="5"></div>
        <div class="b l cell" id="6"></div>
        <div class="b c cell" id="7"></div>
        <div class="b r cell" id="8"></div>
      </div>
      <div id="this-game" float="top">
        Quick link to this game: <span id="this-game-link"><a href="<%= request.getAttribute("game_link") %>"><%= request.getAttribute("game_link") %></a></span>
      </div>
    </div>
  </body>
</html>
