# marksman-lsp

Markdown language server plugin for Claude Code.

## Overview

marksman-lsp integrates [marksman](https://github.com/artempyanykh/marksman) with Claude Code, providing intelligent markdown editing capabilities:

- Go-to-definition for links
- Find references for headings and links
- Completion for inline, reference, and wiki-style links
- Hover preview for links
- Diagnostics for broken wiki-links
- Document and workspace symbol navigation
- Rename refactoring for documents and headings

## Supported File Extensions

- `.md` (Markdown)

## Supported Link Formats

- Inline links: `[text](/path.md#heading)`
- Reference-style links: `[ref]: /url "Title"`
- Wiki-style links: `[[another-note]]`, `[[#heading]]`

## Installation

### 1. Install marksman

#### macOS

```bash
brew install marksman
```

#### Linux (snap)

```bash
snap install marksman
```

#### Linux (binary)

Download from [GitHub Releases](https://github.com/artempyanykh/marksman/releases).

#### Windows

```powershell
scoop install marksman
```

Or download from [GitHub Releases](https://github.com/artempyanykh/marksman/releases).

### 2. Verify installation

```bash
marksman --version
```

### 3. Install the plugin

Add the marketplace (if not already added):

```bash
/plugin marketplace add kzmshx/claude-plugins
```

Install the plugin:

```bash
/plugin install marksman-lsp@kzmshx
```

## LSP Capabilities

| Feature           | Description                                         |
| ----------------- | --------------------------------------------------- |
| `goToDefinition`  | Navigate to link targets                            |
| `findReferences`  | Find all references to headings or links            |
| `hover`           | Preview link content                                |
| `completion`      | Auto-complete links                                 |
| `rename`          | Rename documents or headings with reference updates |
| `diagnostics`     | Detect broken wiki-links                            |
| `documentSymbol`  | List all headings in current file                   |
| `workspaceSymbol` | Search headings across workspace                    |
| `codeLens`        | Show reference counts on headings                   |
| `codeActions`     | Auto-generate table of contents                     |

## Use Cases

- Managing `CLAUDE.md` and documentation files
- Zettelkasten-style note-taking
- Wiki-style knowledge bases
- Cross-referencing between markdown documents

## Configuration

marksman uses `.marksman.toml` for project-specific configuration. See [marksman documentation](https://github.com/artempyanykh/marksman/blob/main/docs/configuration.md) for details.

## More Information

- [marksman GitHub Repository](https://github.com/artempyanykh/marksman)
- [marksman Features Documentation](https://github.com/artempyanykh/marksman/blob/main/docs/features.md)

## License

MIT
