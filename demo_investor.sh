#!/bin/bash
# steel-workspace: демо для инвесторов
echo "🔐 steel-workspace | Крипто-авторство • Защита • Мир"
echo ""
echo "✅ Крипто-ключ: $(gpg --list-keys --keyid-format SHORT 2>&1 | grep -c 'BAFF7949' || echo '0') ключ найден"
echo "✅ Модули: $(find modules/ -name '*.py' -o -name '*.sh' 2>/dev/null | wc -l) файлов"
echo "✅ Подписи: $(git log --oneline --show-signature -1 2>&1 | grep -c 'Good signature' || echo '0') проверок"
echo ""
echo "📧 Контакт: metdefin@gmail.com (PGP-верификация)"
echo "🔑 Key ID: ADF1345C75BF6102DFB71F03F4621630BAFF7949"
