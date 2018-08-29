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

syn region kokaAngleBrace transparent matchgroup=kokaSymbols start="<" end=">" contains=ALL
syn region kokaBrace transparent matchgroup=kokaSymbols start="{" end="}" contains=ALL
syn region kokaParen transparent matchgroup=kokaSymbols start="(" end=")" contains=ALL
syn region kokaSquareBrace transparent matchgroup=kokaSymbols start="\[" end="\]" contains=ALL

syn match kokaAnyVar /[a-z][a-z\-]*['?]\?/

syn match kokaSymbols /\$\|%\|&\|\*\|+\|~\|!\|\\\|\^\|#\|-\|?\|\/\|=\|\.\|:\|<\|>\||\|;/
syn match kokaOpServed "->"
syn match kokaUnderscore "_"

syn keyword kokaTodo contained TODO FIXME XXX

syn keyword kokaOperatorPriority infix infixr infixl prefix

syn keyword kokaType type cotype rectype alias
syn keyword kokaTypeMod open extend
syn keyword kokaStruct struct
syn keyword kokaConDef con
syn keyword kokaEffect effect
syn cluster kokaTypes contains=kokaType,kokaTypeMod,kokaStruct,kokaConDef,kokaEffect

syn match kokaComment "//.*" contains=kokaTodo
syn region kokaComment start="/\*" end="\*/" contains=kokaTodo

syn keyword kokaVarDef var val extern external interface
syn keyword kokaDefMod inline with as abstract

syn keyword kokaHandle handle
syn keyword kokaHandleDef handler

syn keyword kokaTypeKeyrowds forall exists some

syn keyword kokaFun fun function
syn keyword kokaVisiblity public private
syn keyword kokaInclude include
syn keyword kokaModule module
syn keyword kokaModuleImport import

syn keyword kokaIf if then else elsif

syn keyword kokaMatch match

syn cluster kokaEncl contains=kokaBrace,kokaParen,kokaAngleBrace,kokaSquareBrace

syn region  kokaString0 start=+"+ end=+"+ end=+$+
syn region  kokaRawString start=+@"+ end=+"+ end=+$+
syn match kokaChar /'.'/
syn cluster kokaString contains=kokaString0,kokaRawString,kokaChar

syn keyword kokaBoolean True False
syn match kokaConstr /[A-Z]\w\+/

hi def link kokaType Type
hi def link kokaTypeMod Type
hi def link kokaStruct Type
hi def link kokaConDef Type
hi def link kokaEffect Type

hi def link kokaFun Keyword
hi def link kokaIf Keyword
hi def link kokaMatch Keyword

hi def link kokaVarDef Statement
hi def link kokaDefMod PreProc

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

hi def link kokaUnderscore Whitespace

hi def link kokaString0 String
hi def link kokaRawString String
hi def link kokaChar Character

hi def link kokaComment Comment
hi def link kokaTodo Todo

hi def link kokaOperatorPriority Statement
hi def link kokaAnyVar Normal

let b:current_syntax = "koka"

if main_syntax == 'koka'
	unlet main_syntax
endif

let b:spell_options="contained"

" vim: ts=8
