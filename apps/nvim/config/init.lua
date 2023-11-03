---
vim.g.mapleader = " "

----------------------------------------------------------------
-- plugins
require('lazyvim');

----------------------------------------------------------------
---- legacy setting
--function source(filepath)
--  local file = io.open(filepath, "r")
--  local contents = file:read("*all")
--  vim.cmd(contents)
--  file:close()
--end

--source(vim.env.HOME .. "/.config/nvim/rc/basic.vim");
--source(vim.env.HOME .. "/.config/nvim/rc/keybinds.vim");
--source(vim.env.HOME .. "/.config/nvim/rc/styles.vim");

local CONFIG = vim.env.XDG_CONFIG_HOME or (vim.env.HOME .. '/.config')
vim.cmd("source " .. CONFIG .. "/nvim/rc/basic.vim")
vim.cmd("source " .. CONFIG .. "/nvim/rc/keybinds.vim")
vim.cmd("source " .. CONFIG .. "/nvim/rc/styles.vim")

----------------------------------------------------------------
---- lua setting
--require('base')
--require('keybinds')

--vim.cmd("autocmd!")

if vim.fn.executable('volta') == 1 then
  vim.g["node_host_prog"] = vim.call("system", 'volta which neovim-node-host | tr -d "\n"')
end

----------------------------------------------------------------
-- memo
-- vim.inspect: Luaオブジェクトを人間が読みやすい文字列に変換する
-- vim.regex: LuaからVimの正規表現を使う
-- vim.api: API関数を公開するモジュール
-- vim.ui: プラグインから利用できる上書き可能な関数
-- vim.loop: Neovimのイベントループ機能を公開するモジュール
-- vim.lsp: 組込みのLSPクライアントを操作するモジュール
-- vim.treesitter: tree-sitterライブラリの機能を公開するモジュール

----------------------------------------------------------------
-- フォルダ構成
-- autoload/
-- 自動的に読み込まれるスクリプト
-- colors/
-- カラースキーマの定義
-- compiler/
-- コンパイラ定義ファイル
-- doc/
-- ヘルプドキュメント
-- ftplugin/
-- ファイルタイプ別のプラグイン
-- ftdetect/
-- ファイルタイプを判別するファイル
-- indent/
-- インデントの設定
-- keymap/
-- キーマップの定義
-- plugin/
-- プラグインスクリプト
-- syntax/
-- 文法
