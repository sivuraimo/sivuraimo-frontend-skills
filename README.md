# sivuraimo-frontend-skills

Общие правила и скиллы Claude Code для фронтенд-проектов Sivuraimo.

| Файл | Что делает |
|---|---|
| `CLAUDE.md` | Глобальные правила: русский, git (без пуша, коммит по команде), деплой, CSS-правки, Chrome |
| `skills/start-task` | Выбор ветки в начале задачи: текущая или отдельная от staging |
| `skills/commit-to-staging` | «Коммить»: pull, коммит, перенос в staging, удаление таск-ветки |
| `skills/linear-task` | Работа по задаче из Linear (ID или ссылка) и создание задач |
| `skills/figma-to-code` | Правила верстки из Figma |
| `skills/interaction-states` | hover / active / focus для мыши и тача |
| `skills/manage-skills` | Как править этот репо и когда нужен `install.sh` |

## Установка

```
git clone git@github.com:sivuraimo/sivuraimo-frontend-skills.git ~/projects/sivuraimo-frontend-skills
~/projects/sivuraimo-frontend-skills/install.sh
```

`install.sh` ставит симлинки в `~/.claude`: правки в репо сразу работают во всех проектах. Существующие файлы с теми же именами переименовываются в `*.backup-<дата>`.

## После правок

| Что сделал | Что запустить |
|---|---|
| Поправил существующий скилл или `CLAUDE.md` | Ничего, работает с новой сессии |
| Добавил новую папку в `skills/` | `./install.sh` |
| Переименовал папку скилла | `rm ~/.claude/skills/<старое-имя>` и `./install.sh` |
| Удалил папку скилла | `rm ~/.claude/skills/<имя>` |
| Поменял `install.sh` | `./install.sh` |

На другой машине после `git pull` то же самое: `install.sh` нужен только в случаях из таблицы.

Специфика проекта (команда и проект в Linear, стек, единицы, команды запуска) остаётся в `CLAUDE.md` самого проекта.
