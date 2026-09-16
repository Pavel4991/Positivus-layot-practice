# Positivus

Практика вёрстки адаптивного landing-страницы для вымышленного digital-маркетингового агентства **Positivus**. Одностраничник свёрстан с нуля с использованием методологии БЭМ и SCSS, без JavaScript-фреймворков и сторонних библиотек.

## Демо

Живая версия: https://rambunctious-committee.surge.sh/

## Технологии

| Технология | Назначение |
|---|---|
| **HTML5** | Семантическая разметка: `<dialog>`, `<details>/<summary>`, `<address>`, `<blockquote>` |
| **SCSS (Sass)** | Компилируется в CSS через CLI |
| **БЭМ** | Блок-Элемент-Модификатор в именовании классов |
| **CSS Grid / Flexbox** | Построение сеток и раскладки |
| **CSS Custom Properties** | Переменные цветов, отступов и радиусов |
| **Vanilla JS** | Только нативные `<dialog>` для мобильного меню |

Шрифт — **Space Grotesk** (Regular 400, Medium 500), подключён локально через `@font-face` (`.woff2`).

## Секции страницы

- **Header** — фиксированная шапка с навигацией и бургер-меню для мобильных
- **Hero** — заголовок, CTA-кнопка, иллюстрация и логотипы партнёров
- **Services** — сетка из 6 карточек услуг с 3 вариантами оформления
- **Banner CTA** — призыв к действию «Let's make things happen»
- **Case Studies** — горизонтально прокручиваемые кейсы
- **Working Process** — аккордеон из 6 шагов на нативных `<details>`
- **Team** — сетка карточек команды (6 участников)
- **Testimonials** — слайдер отзывов со scroll-snap и пагинацией
- **Contact Us** — форма с радио-переключателем «Say Hi» / «Get a Quote»
- **Footer** — тёмный подвал с соцсетями, контактами и формой подписки

## Структура проекта

```
├── index.html              # Одностраничный сайт
├── makefile                # Сборка и деплой
├── fonts/
│   ├── SpaceGrotesk-Regular.woff2
│   └── SpaceGrotesk-Medium.woff2
├── images/
│   ├── logo.svg / logo-light.svg
│   ├── hero-bg.svg / banner-bg.svg / contact-us-bg.svg
│   ├── icons/              # Стрелки, соцсети, звёзды
│   ├── services/           # Иллюстрации услуг (1–6)
│   ├── team/               # Аватары команды (1–6)
│   └── partners/           # Логотипы партнёров
└── styles/
    ├── styles.scss         # Точка входа (импорты)
    ├── _variables.scss     # CSS-переменные
    ├── _mixins.scss        # Миксины (fluid-text, flex-center)
    ├── _media.scss         # Миксины брейкпоинтов
    ├── _utils.scss         # Утилитарные классы (container, visually-hidden)
    ├── _globals.scss       # Базовые стили элементов
    ├── _normalize.scss     # Сброс стилей
    ├── _fonts.scss         # @font-face
    └── blocks/             # БЭМ-стили компонентов
```

## Установка и запуск

Требуется глобально установленный Sass CLI.

```bash
make gen_css    # Компилирует styles/styles.scss → styles/styles.css
make deploy     # Деплой на Surge.sh
```

Затем откройте `index.html` в браузере или запустите локальный сервер.

## Особенности реализации

- **Адаптивность** — 4 брейкпоинта: Desktop (1280px+), Tablet (≤1023px), Mobile (≤767px), Mobile-S (≤480px)
- **Жидкая типографика** — размер шрифта через `clamp()` в миксине `fluid-text`
- **Доступность** — класс `visually-hidden`, поддержка `prefers-reduced-motion`, семантическая разметка
- **Дизайн-система** — акцентный зелёный `#B9FF66`, тёмный `#191A23`, плоские тени, радиусы 7/14/45px
- **Интерактив без JS** — аккордеон, модальное окно и слайдер работают на нативных HTML-механизмах