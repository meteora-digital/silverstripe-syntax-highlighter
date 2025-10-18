# Enhanced Silverstripe Templates

Supercharge your Silverstripe development in VS Code! This extension brings vibrant syntax highlighting to `.ss` template files, making your code pop with colour and clarity. Say goodbye to old and broken extensions and hello to a coding experience that's as dynamic as your Silverstripe sites.

## See for yourself

Open any `.ss` file in VS Code and watch the magic happen! Syntax highlighting kicks in automatically for all Silverstripe goodies.

```ss
<!doctype html>
<html lang="en-NZ">
    <head>
        <title>$Title</title>
        <%-- This is a Silverstripe comment --%>
    </head>
    <body>
        <h1>$PageTitle</h1>

        <%-- Variable examples --%>
        <p>Welcome $FirstName $LastName!</p>
        <p>User email: $Email</p>
        <p>Complex variable: $User.Profile.Avatar.URL</p>
        <p>Method call: $User.getFullName()</p>

        <%-- Control structures with operators --%>
        <% if $Content || not $HideDetails %>
            <div class="welcome">
                <p>Welcome to our site!</p>
            </div>
        <% end_if %>

        <% if $Articles.Count %>
            <% loop $Articles %>
                <article>
                    <h2>$Title</h2>
                    <p>$Content.Summary(100)</p>
                    <% if $Image %>
                        <img src="{$Image.Fill(200,200).Convert('webp').URL}" alt="{$Image.Title.ATT}">
                    <% end_if %>
                </article>
            <% end_loop %>
        <% end_if %>

        <%-- Include and require --%>
        <% include SiteNavigation %>
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
```

## Custom Styling

Want to tweak the look? Let's make it yours!

1. Inspect the TextMate scopes: Press `Cmd/Ctrl + Shift + P` to open the Command Palette, then search for "Developer: Inspect Editor Tokens and Scopes".
2. Add customizations to your `settings.json`. For instance, to style Silverstripe functions in italic blue:

```jsonc
"editor.tokenColorCustomizations": {
    "textMateRules": [
        {
            "scope": "support.function.silverstripe",
            "settings": {
                "foreground": "#267beb",
                "fontStyle": "italic"
            }
        }
    ]
}
```

Experiment and have fun personalizing your theme!

## Extension Development & Local Installation

Building locally? Here's how to get it running:

1. Run `vsce package` in this folder to whip up a `.vsix` file.
2. Install in VS Code: `code --install-extension <your-vsix-file>`
3. Open a `.ss` file and bask in the glory.
4. For updates, just re-package and re-install—easy peasy!

## File Association

No setup needed! The extension auto-activates for `.ss` files. Just code away.

## License

MIT – Free as a Silverstripe template!
