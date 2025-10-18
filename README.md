# Enhanced Silverstripe Templating

Supercharge your Silverstripe development in VS Code! This extension brings vibrant syntax highlighting to `.ss` template files, making your code pop with colour and clarity. Say goodbye to old and broken extensions and hello to a coding experience that's as dynamic as your Silverstripe sites.

## Usage

Ready to level up? Open any `.ss` file in VS Code and watch the magic happen! Syntax highlighting kicks in automatically for all Silverstripe goodies, including:

```ss
$Title
$User.Profile.Avatar.URL
$Image.Fill(200,200).URL
```

```ss
<% if $Condition %>
    <!-- content here -->
<% end_if %>
```

```ss
<% include SiteNavigation %>
```

```ss
<% require css('themes/mytheme/css/layout.css') %>
```

```ss
{$Email}
{$getStyleTag(...)}
```

```ss
<% cached 'navigation', $LastEdited %>
    <!-- cached content -->
<% end_cached %>
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
