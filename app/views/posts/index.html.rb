<h1>Статьи<h1>
  <% @posts.each do |post| %>
    <h2><%= post.title %><h2>
  <% end %>
