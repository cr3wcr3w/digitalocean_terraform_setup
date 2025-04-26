# Standards

## Naming conventions
- `kebab-case` - for all folders/files.
- `PascalCase` - for classes and types.
- `snake_case` - for database tables and columns.
- `camelCase` - for functions, zod schemas and etc.

## linting and formatting 
- Always run `npm run biome:write` (not necessarily after every change, but always before pushing to GitHub).
    - This ensures you catch errors early before GitHub Actions run.