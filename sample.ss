<!doctype html>
<html lang="en-NZ">
<head>
    <title>$Title</title>
    <%-- This is a SilverStripe comment --%>
    <% base_tag %>
</head>
<body>
    <h1>$PageTitle</h1>

    <%-- Variable examples --%>
    <p>Welcome $FirstName $LastName!</p>
    <p>User email: {$Email}</p>
    <p>Complex variable: $User.Profile.Avatar.URL</p>
    <p>Method call: $User.getFullName()</p>

    <%-- Control structures with operators --%>
    <% if $Content || not $HideDetails %>
        <div class="welcome">
            <p>Welcome to our site!</p>
        </div>
    <% end_if %>

    <% if $UserLevel === 'admin' %>
        <p>Admin access granted</p>
    <% else_if $UserLevel == 'user' %>
        <p>User access granted</p>
    <% else_if $Status != 'inactive' %>
        <p>Active user</p>
    <% else_if $Score >= 100 %>
        <p>High score achieved!</p>
    <% end_if %>

    <% loop $Articles %>
        <article>
            <h2>$Title</h2>
            <p>$Content.Summary(100)</p>
            <% if $Image %>
                <img src="{$Image.FocusFill(200,200).URL}" alt="$Image.Title">
            <% end_if %>
            <p>Style tag: {$getStyleTag('_resources/themes/marmalade/dist/styles/inspiration.css', 'InspirationCSS')}</p>
        </article>
    <% end_loop %>

    <% with $SiteConfig %>
        <% if $Title %>
            <footer>
                <p>&copy; $Title</p>
            </footer>
        <% else %>
            <footer>
                <p>&copy; My Website</p>
            </footer>
        <% end_if %>
    <% end_with %>

    <%-- Include and require --%>
    <% include SiteNavigation %>
    <% include Toast\Includes\InspirationDetails %>
    <% require css('themes/mytheme/css/layout.css') %>

    <%-- Caching --%>
    <% cached 'navigation', $LastEdited %>
        <% include SiteNavigation %>
    <% end_cached %>

    <script>
        // JavaScript code here
        console.log('Page loaded');
    </script>

    <style>
        /* CSS styles here */
        body { font-family: Arial, sans-serif; }
    </style>
</body>
</html>
