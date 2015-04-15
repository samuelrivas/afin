open Core.Std
open Core_extended.Std
open Async.Std

val dump: dir:String.t -> name:String.t -> contents:String.t
  -> (Unit.t, Exn.t) Deferred.Result.t
(** This dumps the contents (`contents`) of a string to the file named `name` in the directory
 * named `dir` *)

val slurp: file:String.t -> (String.t, Exn.t) Deferred.Result.t
(** This is essentially a very thin wrapper around
    Async.Std.Reader.file_contents. It mostly exits here so that we have
   pair for the dump item*)
