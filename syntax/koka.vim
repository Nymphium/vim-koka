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

syn match kokaSymbols /\$\|%\|&\|\*\|+\|~\|!\|\\\|\^\|#\|-\|?\|\/\|=\|\.\|:\|/
syn match kokaOpServed "->"

syn keyword kokaTodo contained TODO FIXME XXX

syn keyword kokaOperatorPriority infix infixr infixl prefix

syn keyword kokaType type cotype rectype
syn keyword kokaTypeMod open extend
syn keyword kokaEffect effect
syn keyword kokaStruct struct
syn cluster kokaTypeDecl contains=kokaType,kokaEffect,kokaStruct

syn match kokaComment "//.*" contains=kokaTodo
syn region kokaComment start="/\*" end="\*/" contains=kokaTodo

syn keyword kokaVarDef var val
syn keyword kokaConDef con

syn keyword kokaHandle handle
syn keyword kokaHandleDef handler

syn match kokaTypeID /\a+[?']/

syn keyword kokaTypeKeyrowds forall exists some
syn keyword kokaAbstract abstract

syn keyword kokaFun fun function
syn keyword kokaVisiblity public private
syn keyword kokaInclude include
syn keyword kokaModule module
syn keyword kokaModuleImport import

syn keyword kokaIf if then else elsif

syn region kokaEncl transparent matchgroup=kokaSymbols start="{" end="}" contains=ALL
syn region kokaEncl transparent matchgroup=kokaSymbols start="(" end=")" contains=ALL
syn region kokaEncl transparent matchgroup=kokaSymbols start="<" end=">" contains=ALL

syn keyword kokaBoolean true false

hi def link kokaFun Keyword
hi def link kokaIf Keyword

hi def link kokaInclude Include
hi def link kokaModuleImport Include
hi def link kokaModule Include

hi def link kokaOpServed Operator
hi def link kokaSymbols Operator

hi def link kokaVisiblity Statement
hi def link kokaBoolean Boolean

hi def link kokaEffect Identifier
hi def link kokaHandler Identifier
hi def link kokaHandle Identifier

hi def link kokaComment Comment

hi def link kokaTodo Todo

let b:current_syntax = "koka"

if main_syntax == 'koka'
	unlet main_syntax
endif

let b:spell_options="contained"
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8
