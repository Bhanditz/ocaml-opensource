(****************************************************************************)
(*  Copyright (C) Mehdi Dogguy <mehdi@dogguy.org>, 2016                     *)
(*                                                                          *)
(*  Permission is hereby granted, free of charge, to any person obtaining   *)
(*  a copy of this software and associated documentation files (the         *)
(*  "Software"), to deal in the Software without restriction, including     *)
(*  without limitation the rights to use, copy, modify, merge, publish,     *)
(*  distribute, sublicense, and/or sell copies of the Software, and to      *)
(*  permit persons to whom the Software is furnished to do so, subject to   *)
(*  the following conditions:                                               *)
(*                                                                          *)
(*  The above copyright notice and this permission notice shall be          *)
(*  included in all copies or substantial portions of the Software.         *)
(*                                                                          *)
(*  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,         *)
(*  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF      *)
(*  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND                   *)
(*  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE  *)
(*  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION  *)
(*  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION   *)
(*  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.         *)
(****************************************************************************)

exception Error of string

(** Generic function to request JSon data from API server *)
val get_data : string -> string list -> Yojson.Basic.json

(** Retrieve all licenses that are tagged with a given tag *)
val get_licenses : string -> Yojson.Basic.json

(** Retrieve a license for a given identifier *)
val get_license_by_id : string -> Yojson.Basic.json

(** Retrieve a license for a given scheme and identifier *)
val get_license_by_scheme_and_identifier :
  string -> string -> Yojson.Basic.json

(** Retrieve all licenses *)
val all_licenses : unit -> Yojson.Basic.json