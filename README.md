# vim-filetype

## Description
A Vim plugin for automated filetype detection and buffer-local configuration. It implements a modular structure to isolate filetype identification from language-specific settings, ensuring optimal performance through lazy loading.

## Directory Structure
```text
VimFileType/
├── ftdetect/
│   └── filetype.vim    # Filetype detection and syntax regions
├── ftplugin/           # Buffer-local mappings and options
│   ├── agda.vim
│   ├── pwd.vim
│   ├── pvt.vim
│   └── scheme.vim
├── plugin/             # Global configuration and highlighting
└── README.md
```

## Technical Implementation

### Filetype Detection (`ftdetect/`)
Detection is performed using `setfiletype` (setf). This approach prioritizes existing filetype definitions and avoids conflicts with other plugins or manual user overrides.

### Buffer-Specific Logic (`ftplugin/`)
Logic that modifies buffer state is isolated in `ftplugin/` files. These are only executed when the specific filetype is active:
- **Agda**: Maps `<leader>l` to `call agda#load()`.
- **Scheme**: Executes `setlocal nolisp`.
- **Sensitive Files (.pvt, .pwd)**: Inherits `javascript` syntax, disables `colorcolumn` and `undofile`, and overrides `<leader>g` with a restriction message.

### Syntax Masking and Sensitive Files
The plugin distinguishes between dedicated sensitive files and languages that support inline password masking:
- **Dedicated Sensitive Files**: `.pvt` and `.pwd` files are treated as sensitive containers. They use JavaScript syntax but have specific security-oriented buffer settings.
- **Languages with Masking Support**: `.hvm`, `.icvm`, `.ic`, and `.ksc` are programming languages. The plugin defines a `Password` syntax region for these languages to mask specific patterns (e.g., lines starting with `//~`).

## Installation

### Using vim-plug
Add the following to your configuration:
```vim
Plug 'your-username/vim-filetype'
```

### Manual Installation
Clone the repository into your Vim plugin path:
```sh
git clone https://github.com/your-username/vim-filetype.git ~/.vim/pack/plugins/start/vim-filetype
```

## Configuration

### Customizing Highlighting
The `Password` highlight group can be overridden in your configuration. Use `highlight default` to ensure your settings take precedence:
```vim
highlight Password ctermfg=white guifg=white ctermbg=blue guibg=blue
```

## License
Distributed under the same terms as Vim itself.
