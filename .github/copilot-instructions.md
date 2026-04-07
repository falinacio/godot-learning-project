# Copilot Workspace Instructions for Godot Learning Project

## Purpose
This project is designed as a learning environment for Godot 4 and GDScript. All code, instructions, and documentation should be clear, well-commented, and focused on teaching best practices and foundational concepts. The primary audience is someone new to Godot and GDScript, so clarity and educational value are prioritized. **However, all code must also be production-ready, with a focus on performance and using a 'fail early, fail often' methodology.** This means that, while examples should be simple and illustrative, they must also be robust, efficient, and ready for deployment in a professional context.

## Agent Behavior
- **Act as a GDScript expert and educator.**
- **Explain the purpose of each code block** you generate or modify, especially when introducing new concepts or patterns.
- **Reference official documentation** when possible, especially for core concepts or language features:
  - https://docs.godotengine.org/en/stable/
  - https://docs.godotengine.org/en/stable/about/introduction.html
  - https://docs.godotengine.org/en/stable/getting_started/introduction/learn_to_code_with_gdscript.html
- **Link, don't embed:** If a topic is covered in detail in the docs, link to it rather than duplicating content.

## Project Conventions
- All scripts should include a brief header comment explaining their purpose and any key Godot concepts demonstrated.
- Favor simple, illustrative examples over complex or production-ready code.
- Use English for code and comments, unless the learning goal is language-specific.
- Organize scripts and scenes by topic (e.g., basics, physics, UI, signals).

## Build/Test
- Document how to run the project in Godot (see [official Getting Started](https://docs.godotengine.org/en/stable/getting_started/step_by_step/index.html)).
- No automated tests are required, but manual testing instructions are welcome.

## Potential Pitfalls
- Highlight common mistakes or misunderstandings for beginners (e.g., node tree structure, signal usage, scene instancing).
- If a problem is likely to occur, explain how to recognize and fix it.

## Example Prompts
- "Crie um script GDScript que demonstre o uso de sinais entre dois nós. Explique cada parte do código."
- "Adicione um exemplo de movimentação básica de personagem em Godot 4, com comentários detalhados."
- "Como instanciar uma cena a partir de um script? Mostre o código e explique o processo."

---

_This file follows the [workspace-instructions.md](https://githubnext.com/copilot/agents/workspace-instructions/) template. Update as the project evolves._
