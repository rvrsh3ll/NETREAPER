# Contributing to NETREAPER

Thank you for your interest in contributing to NETREAPER! 💀

## How to Contribute

1. **Fork** the repository and create a feature branch
```bash
   git checkout -b feature/awesome-feature
```

2. **Follow the code style** of existing scripts:
   - Use `bash -n` to validate syntax
   - Run `shellcheck` for linting
   - Keep functions modular and documented
   - Match the existing color scheme and UI patterns

3. **Test your changes**:
```bash
   bash -n netreaper
   shellcheck netreaper
   ./netreaper --version
```

4. **Sign your commits** (DCO) and ensure all checks pass

5. **Open a Pull Request** using the provided template

## What We're Looking For

- 🐛 Bug fixes with clear descriptions
- ✨ New tool integrations
- 📚 Documentation improvements
- 🎨 UI/UX enhancements
- 🔧 Performance optimizations

## Contribution Agreement

By submitting a contribution, you agree that:
- Your contribution will be licensed under the Apache 2.0 License
- OFFTRACKMEDIA Studios may use and distribute your contribution
- You have the right to submit the contribution

## Code Style

- Use 4-space indentation
- Quote all variables: `"$var"` not `$var`
- Use `[[ ]]` for conditionals
- Add comments for complex logic
- Keep functions under 50 lines where possible

## Questions?

- Open a GitHub Discussion for general questions
- Use issue templates for bugs/features
- See SECURITY.md for vulnerability reports

---

© 2025 OFFTRACKMEDIA Studios · ABN 84 290 819 896
