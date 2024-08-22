-- default settings
local global      = vim.g
local opt         = vim.opt

vim.scriptcoding  = 'utf-8'

vim.g.mapleader = "\\"

----------------------------------------------------------------------------
-- Search
opt.ignorecase = true -- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
opt.smartcase = true -- 検索文字列に大文字がairline_theme = 'wombat'含まれている場合は区別して検索する
opt.wrapscan = true -- 検索時に最後まで行ったら最初に戻る

---------------------------------------------------------------------------
-- Edit
opt.expandtab = true -- タブ入力を複数の空白入力に置き換える
opt.tabstop = 2 -- 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
opt.shiftwidth = 2 -- 行頭でのTab文字の表示幅
opt.smartindent = true -- 改行時に前の行の構文をチェックし次の行のインデントを増減する

-- Add angle brackets to the list of recognized characters in a pair
opt.matchpairs:append({ "<:>" })

opt.hidden = true

-- この時間の間 (ミリ秒単位) 入力がなければ、スワップファイルがディスクに書き込まれる
opt.updatetime = 100

opt.swapfile = true
opt.undofile = true

---------------------------------------------------------------------------
-- View
opt.mouse = "a" -- Enable mouse input
opt.showmode = false
opt.number = true -- 行番号を表示
opt.cursorline = true -- 現在の行を強調表示
opt.termguicolors = true
opt.linebreak = true
opt.showbreak = "\\"
opt.breakat = " 	;:,!?"
opt.whichwrap = "b,s,h,l,<,>,[,],~" -- カーソルの左右移動で行末から次の行の行頭への移動が可能になる
opt.breakindent = true


