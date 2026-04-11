#!/bin/bash
# steel-workspace: демо для инвесторов (улучшенная версия)
echo "🔐 steel-workspace | Крипто-авторство • Защита • Мир"
echo ""
echo "✅ Крипто-ключ: $(gpg --list-keys --keyid-format SHORT 2>&1 | grep -c 'BAFF7949' || echo '0') ключ найден"
echo "✅ Модули: $(find modules/ -type f \( -name "*.sh" -o -name "*.py" \) 2>/dev/null | wc -l) файлов в $(find modules/ -type d 2>/dev/null | wc -l) папках"
echo "✅ Подписи: $(git log --oneline --show-signature -1 2>&1 | grep -c 'Good signature' || echo '0') проверок"
echo "✅ Лицензии: $([ -f LICENSE.md ] && echo 'Готово' || echo 'В процессе')"
echo ""
echo "📊 Модули:"
find modules/ -maxdepth 2 -type d -name "*" 2>/dev/null | sed 's|modules/|  • |g' | grep -v '^  • $'
echo ""
echo "📧 Контакт: metdefin@gmail.com (PGP-верификация)"
echo "🔑 Key ID: ADF1345C75BF6102DFB71F03F4621630BAFF7949"
