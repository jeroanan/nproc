#lang scribble/manual
@require[@for-label[nproc
                    racket/base]]

@title{nproc}
@author{David Wilson}

@defmodule[nproc]

A very simle wrapper for num_processors in gnulib's nproc module.

@table-of-contents[]

@section[#:tag "Usage"]{Usage}

> (require nproc)
> (get-number-of-processors)
4


