# Enhanced SilverStripe Templates Syntax Highlighting

A Visual Studio Code extension providing advanced syntax highlighting for SilverStripe template language (`.ss`) files.

## Features

- Inherits all HTML highlighting
- SilverStripe comments: `<%-- comment --%>`
- Control structures: `<% if %>`, `<% loop %>`, `<% with %>`, `<% else_if %>`, etc.
- Variables: `$Variable`, `$Object.Property`, `$Method()`
- Expressions: `{$Variable}`
- Template functions: `base_tag`, `require`, `include`, `cached`, etc.
- Dot notation, method chains, and complex expressions
- Custom coloring for includes, function calls, properties, and logic operators
- Caching blocks: `<% cached ... %> ... <% end_cached %>`
- Automatic file association for `.ss` files

## Usage

Open any `.ss` file in VS Code. Syntax highlighting will be automatically applied for all SilverStripe template constructs, including:

- Variables: `$Title`, `$User.Profile.Avatar.URL`, `$Image.Fill(200,200).URL`
- Control blocks: `<% if $Condition %> ... <% end_if %>`
- Includes: `<% include SiteNavigation %>`
- Requirements: `<% require css('themes/mytheme/css/layout.css') %>`
- Expressions: `{$Email}`, `{$getStyleTag(...)}`
- Caching: `<% cached 'navigation', $LastEdited %> ... <% end_cached %>`

See `sample.ss` for a comprehensive example.

## Custom Comment Styling

SilverStripe comments (`<%-- ... --%>`) may not be styled as you expect by default. To improve their appearance, add the following to your VS Code `settings.json`:

```jsonc
"editor.tokenColorCustomizations": {
    "textMateRules": [
        {
            "scope": [
                    "comment.block.silverstripe",
                    "comment.block.silverstripe constant.character.escape.silverstripe",
                    "comment.block.silverstripe constant.numeric.silverstripe",
                    "comment.block.silverstripe string.silverstripe",
                    "comment.block.silverstripe punctuation.definition.tag.begin.html.silverstripe",
                    "comment.block.silverstripe punctuation.definition.tag.end.html.silverstripe",
                    "comment.block.silverstripe punctuation.separator.key-value.html.silverstripe",
                    "comment.block.silverstripe variable.silverstripe",
                    "comment.block.silverstripe punctuation.definition.string.begin.html.silverstripe",
                    "comment.block.silverstripe punctuation.definition.string.end.html.silverstripe",
                    "comment.block.silverstripe entity.other.attribute-name.html.silverstripe",
                    "comment.block.silverstripe support.function.silverstripe",
                ],
                "settings": {
                    "foreground": "#838383",
                    "fontStyle": "italic"
                }
        }
    ]
}
```

This will ensure SilverStripe comments are styled consistently.

## Development & Local Installation

1. Run `vsce package` in this folder to create a `.vsix` file.
2. Install in VS Code: `code --install-extension <your-vsix-file>`
3. Open a `.ss` file to see the highlighting.
4. To update, re-package and re-install the `.vsix`.

## File Association

The extension automatically activates for `.ss` files.

## License

MIT
