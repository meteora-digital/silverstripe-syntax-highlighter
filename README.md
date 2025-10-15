
# SilverStripe Syntax Highlighter

A Visual Studio Code extension that provides comprehensive syntax highlighting for SilverStripe template language (`.ss`) files.

## Features

- Inherits all HTML highlighting
- SilverStripe comments: `<%-- comment --%>`
- Control structures: `<% if %>`, `<% loop %>`, `<% with %>`, etc.
- Variables: `$Variable`, `$Object.Property`, `$Method()`
- Expressions: `{$Variable}`
- Template functions: `base_tag`, `require`, `include`, `cached`, etc.
- Full support for dot notation, method chains, and complex expressions
- Custom coloring for include paths, function calls, properties, and logic operators

## Usage

Open any `.ss` file in VS Code. Syntax highlighting will be automatically applied for all SilverStripe template constructs, including:

- Variables: `$Title`, `$User.Profile.Avatar.URL`, `$Image.FocusFill(200,200).URL`
- Control blocks: `<% if $Condition %> ... <% end_if %>`
- Includes: `<% include Navigation %>`, `<% include Toast\Includes\InspirationDetails %>`
- Requirements: `<% require css('themes/mytheme/css/layout.css') %>`
- Expressions: `{$getStyleTag('_resources/themes/marmalade/dist/styles/inspiration.css', 'InspirationCSS')}`

## Development & Local Installation

1. Run `vsce package` in this folder to create a `.vsix` file
2. Install in VS Code: `code --install-extension <your-vsix-file>`
3. Open a `.ss` file to see the highlighting
4. To update, re-package and re-install the `.vsix`

## File Association

The extension automatically activates for `.ss` files.

## License

MIT
