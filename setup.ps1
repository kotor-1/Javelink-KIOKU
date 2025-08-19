# KIOKU JAVELINK - 湘南スタイル投擲解析アプリ セットアップ
# PowerShellで実行してください

Write-Host "🌊 KIOKU JAVELINK のセットアップを開始します..." -ForegroundColor Cyan
Write-Host "🏖️ 湘南の海を感じる投擲解析システム" -ForegroundColor Yellow
Write-Host ""

# ディレクトリ構造の確認と作成
Write-Host "📁 ディレクトリ構造を準備中..." -ForegroundColor Green
New-Item -ItemType Directory -Path "templates" -Force | Out-Null
New-Item -ItemType Directory -Path "static/css" -Force | Out-Null
New-Item -ItemType Directory -Path "static/js" -Force | Out-Null
New-Item -ItemType Directory -Path "uploads" -Force | Out-Null

Write-Host "✅ ディレクトリ構造を作成しました" -ForegroundColor Green

# Python環境の確認
Write-Host "🐍 Python環境を確認中..." -ForegroundColor Green
try {
    $pythonVersion = python --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Pythonが見つかりました: $pythonVersion" -ForegroundColor Green
    } else {
        Write-Host "❌ Pythonが見つかりません。Python 3.8以上をインストールしてください。" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "❌ Pythonが見つかりません。Python 3.8以上をインストールしてください。" -ForegroundColor Red
    exit 1
}

# pipの確認
Write-Host "📦 pipを確認中..." -ForegroundColor Green
try {
    $pipVersion = pip --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ pipが見つかりました: $pipVersion" -ForegroundColor Green
    } else {
        Write-Host "❌ pipが見つかりません。Pythonの再インストールが必要かもしれません。" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "❌ pipが見つかりません。Pythonの再インストールが必要かもしれません。" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host "🚀 セットアップ完了！" -ForegroundColor Green
Write-Host "====================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "🌊 次のステップ:" -ForegroundColor Yellow
Write-Host "   1. pip install -r requirements.txt" -ForegroundColor White
Write-Host "   2. python app.py" -ForegroundColor White
Write-Host "   3. ブラウザで http://localhost:5000 にアクセス" -ForegroundColor White
Write-Host ""
Write-Host "💡 機能:" -ForegroundColor Yellow
Write-Host "   ✓ 投擲動画の解析" -ForegroundColor Green
Write-Host "   ✓ リリース角度・高さ・時間の測定" -ForegroundColor Green
Write-Host "   ✓ 湘南スタイルのインタラクティブUI" -ForegroundColor Green
Write-Host "   ✓ ジャベリック用品のアニメーション" -ForegroundColor Green
Write-Host "   ✓ セキュアなファイル処理" -ForegroundColor Green
Write-Host "   ✓ レスポンシブデザイン" -ForegroundColor Green
Write-Host ""
Write-Host "🎯 テスト方法:" -ForegroundColor Yellow
Write-Host "   1. 投擲動画をドラッグ&ドロップ" -ForegroundColor White
Write-Host "   2. 解析スタートボタンをクリック" -ForegroundColor White
Write-Host "   3. 結果を確認！" -ForegroundColor White
Write-Host ""
Write-Host "🔧 技術仕様:" -ForegroundColor Yellow
Write-Host "   ✓ Flask 2.3.3+" -ForegroundColor Green
Write-Host "   ✓ HTML5 + CSS3 + JavaScript ES6+" -ForegroundColor Green
Write-Host "   ✓ セキュアなファイルアップロード" -ForegroundColor Green
Write-Host "====================================================" -ForegroundColor Cyan

# 依存関係のインストールを提案
Write-Host ""
$installDeps = Read-Host "依存関係を今すぐインストールしますか？ (y/n)"
if ($installDeps -eq "y" -or $installDeps -eq "Y") {
    Write-Host "📦 依存関係をインストール中..." -ForegroundColor Green
    try {
        pip install -r requirements.txt
        Write-Host "✅ 依存関係のインストールが完了しました！" -ForegroundColor Green
        Write-Host ""
        Write-Host "🚀 アプリケーションを起動できます:" -ForegroundColor Yellow
        Write-Host "   python app.py" -ForegroundColor White
    } catch {
        Write-Host "❌ 依存関係のインストールに失敗しました。" -ForegroundColor Red
        Write-Host "手動で 'pip install -r requirements.txt' を実行してください。" -ForegroundColor Yellow
    }
} else {
    Write-Host "💡 後で 'pip install -r requirements.txt' を実行してください。" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "🌺 湘南の海を感じる投擲解析をお楽しみください！" -ForegroundColor Cyan
