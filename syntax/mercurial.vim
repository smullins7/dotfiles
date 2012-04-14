if exists("b:current_syntax")
  finish
endif

syn match hgCommitFirstLine  "\%^.*"      nextgroup=hgCommitBlank skipnl
syn match hgCommitBlank      "^.*"        contained
syn match hgCommitSummary    "^.\{0,50\}" contained containedin=hgCommitFirstLine nextgroup=hg
CommitOverflow
syn match hgCommitOverflow   ".*"         contained
syn match hgCommitComment    "^HG: .*"
syn match hgCommitUser       "user: "     contained containedin=hgCommitComment nextgroup=hgCo
mmitUsername
syn match hgCommitUsername   ".*"         contained
syn match hgCommitBranch     "branch '"   contained containedin=hgCommitComment nextgroup=hgCo
mmitBranchname
syn match hgCommitBranchname "[^']*"      contained
syn match hgCommitAdded      "added "     contained containedin=hgCommitComment nextgroup=hgCo
mmitPath
syn match hgCommitRemoved    "removed "   contained containedin=hgCommitComment nextgroup=hgCo
mmitPath
syn match hgCommitPath       ".*"         contained

hi def link hgCommitSummary    Keyword
hi def link hgCommitOverflow   Error
hi def link hgCommitBlank      Error
hi def link hgCommitComment    Comment
hi def link hgCommitUser       Type
hi def link hgCommitBranch     Type
hi def link hgCommitAdded      Type
hi def link hgCommitRemoved    Type
hi def link hgCommitUsername   Special
hi def link hgCommitBranchname Special
hi def link hgCommitPath       Special

let b:current_syntax = "mercurial"
