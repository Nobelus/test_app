index.html
==========

<h1>Listing Posts</h1>
<table>
  <tr>
    <th>Title</th>
    <th>Text</th>
    <th></th>
    <th></th>
    <th></th>
  </tr>
 
<% @posts.each do |post| %>
  <tr>
    <td><%= post.title %></td>
    <td><%= post.text %></td>
    <td><%= link_to 'Show', post_path(post) %></td>
    <td><%= link_to 'Edit', edit_post_path(post) %></td>
    <td><%= link_to 'Destroy', post_path(post),
                    method: :delete, data: { confirm: 'Are you sure?' } %></td>
  </tr>
<% end %>
</table>

======================
posts_contr....rb

def allusers
  @users = User.all
end

===============
<h1>All Users</h1>
<table>
  <tr>
    <th>Name</th>
    <th>Email</th>
    <th></th>
    <th></th>
    <th></th>
  </tr>
 
<% @users.each do |user| %>
  <tr>
    <td><%= user.name %></td>
    <td><%= user.email %></td>
    <!-- <td><%= link_to 'Show', post_path(post) %></td> 
    <td><%= link_to 'Edit', edit_post_path(post) %></td>
    <td><%= link_to 'Destroy', post_path(post),
                    method: :delete, data: { confirm: 'Are you sure?' } %></td>-->
  </tr>
<% end %>
</table>