" Vim syntax file
" Language:		Koka
" Maintainer:	Nymphium <s1311350@gmail.com>
" Last Change:	2018/08/29

if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif

  let main_syntax='koka'
endif

let s:cpo_save = &cpo
set cpo&vim

syn match kokaBraceErr "}"
syn match kokaParenErr ")"
syn match kokaSquareBraceErr "]"
syn match kokaAngleBraceErr ">"

syn keyword kokaTodo contained TODO FIXME XXX

syn keyword kokaOperatorPriority infix infixr infixl prefix

syn keyword kokaType type cotype rectype alias
syn keyword kokaTypeMod open extend
syn keyword kokaStruct struct
syn keyword kokaConDef contained con
syn keyword kokaEffect effect
syn cluster kokaTypes contains=kokaType,kokaStruct,kokaEffect

syn keyword kokaVarDef var val extern external interface
syn keyword kokaDefMod inline with as
syn keyword kokaAbstract abstract

syn keyword kokaHandleDef handler
syn keyword kokaHandle handle

syn keyword kokaReturn contained return

syn keyword kokaTypeKeyrowds forall exists some

syn keyword kokaFun fun
syn keyword kokaFunction function
syn keyword kokaVisiblity public private
syn keyword kokaInclude include
syn keyword kokaModule module
syn keyword kokaModuleImport import

syn keyword kokaIf contained if then else elsif
syn keyword kokaMatch contained match

syn cluster kokaToplevel contains=kokaModuleImport,kokaModule,kokaFunction,kokaTypes,kokaVisiblity,kokaAbstract

syn region kokaEncl transparent matchgroup=kokaSymbols start="{" end="}" contains=ALLBUT,kokaBraceErr,@kokaToplevel
syn region kokaEncl transparent matchgroup=kokaSymbols start="(" end=")" contains=ALLBUT,kokaParenErr,@kokaToplevel
syn region kokaEncl transparent matchgroup=kokaSymbols start="\[" end="\]" contains=ALLBUT,kokaSquareBraceErr,@kokaToplevel
syn region kokaEncl transparent matchgroup=kokaSymbols start="<" end=">" contains=ALLBUT,kokaAngleBraceErr,@kokaToplevel

syn match kokaConstr /\<[A-Z]\w\+\>/
syn match kokaAnyID /\<\([a-z]\w\?\(-\?[a-zA-Z]\w*\)*['?]\?\)\>/

syn match kokaSymbols /\$\|%\|&\|\*\|+\|\~\|!\|\\\|\^\|#\|-\|?\|\/\|=\|\.\|:\|<\|>\||\|;/
syn match kokaOpServed "->"
syn match kokaUnderscore "_"

syn region  kokaString0 start=+"+ end=+"+ end=+$+
syn region  kokaRawString start=+@"+ end=+"+ end=+$+
syn match kokaChar /\('\(\\\([nrt\\"']\|x[0-9]\{2\}\|u[0-9]\{4\}\|U[0-9]\4\)\|[^\\']\)'\)/
syn cluster kokaString contains=kokaString0,kokaRawString,kokaChar

syn match kokaComment "//.*" contains=kokaTodo
syn region kokaComment start="/\*" end="\*/" contains=kokaTodo

syn match kokaNumber /\<\d\+\.\d+\>/
syn match kokaNumber /\<\(\d\+\.\d+\([eE][\-]\d+\)\)\>/

syn keyword kokaBoolean True False

hi def link kokaType Type
hi def link kokaTypeMod Type
hi def link kokaStruct Type
hi def link kokaConDef Type
hi def link kokaEffect Type

hi def link kokaFun Keyword
hi def link kokaFunction Keyword
hi def link kokaIf Keyword
hi def link kokaMatch Keyword

hi def link kokaVarDef Statement
hi def link kokaDefMod PreProc
hi def link kokaAbstract PreProc

hi def link kokaInclude Include
hi def link kokaModuleImport Include
hi def link kokaModule Include

hi def link kokaOpServed Operator
hi def link kokaSymbols Operator

hi def link kokaVisiblity Statement
hi def link kokaBoolean Boolean
hi def link kokaConstr Constant

hi def link kokaEffect Identifier
hi def link kokaHandler Identifier
hi def link kokaHandle Identifier
hi def link kokaReturn Statement

hi def link kokaUnderscore Whitespace

hi def link kokaString0 String
hi def link kokaRawString String
hi def link kokaChar Character

hi def link kokaComment Comment
hi def link kokaTodo Todo

hi def link kokaOperatorPriority Statement
hi def link kokaAnyID Normal
hi def link kokaNumber Number
hi def link kokaError Error

let b:current_syntax = "koka"

if main_syntax == 'koka'
  unlet main_syntax
endif

let b:spell_options="contained"

" vim: ts=8
