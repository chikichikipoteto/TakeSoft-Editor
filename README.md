# PDF Editor

PDFエディターアプリケーション

## 起動方法

### 方法1: 開発サーバーで起動（推奨）

`start.bat` ファイルをダブルクリックするか、コマンドラインで以下を実行：

```bash
npm run dev
```

ブラウザで http://localhost:5173 が自動的に開きます。

### 方法2: オフラインで起動

`open-offline.bat` ファイルをダブルクリックするか、コマンドラインで以下を実行：

```bash
npm run build
npm run preview
```

または：

```bash
open-offline.bat
```

ブラウザで http://localhost:5000 が自動的に開きます。

### 方法3: ビルドされたファイルを使用

```bash
npm run build
```

その後、`dist` フォルダを任意のWebサーバーでホストしてください。

## トラブルシューティング

### ブラウザが開かない場合

1. ブラウザで手動で以下のURLを開いてください：
   - 開発サーバー: http://localhost:5173
   - プレビューサーバー: http://localhost:5000

2. ポートが使用中の場合は、別のポートを試してください：
   ```bash
   npm run dev -- --port 3000
   ```

### エラーが表示される場合

ブラウザの開発者ツール（F12）を開いて、コンソールエラーを確認してください。
