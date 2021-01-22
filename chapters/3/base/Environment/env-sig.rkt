#lang typed/racket

(require "../types/types.rkt")

(provide env^)


(define-signature env^
  ([empty-env   : [-> Env]]
   [empty-env?  : [-> Env Boolean]]

   [extend-env  : [-> Symbol DenVal Env Env]]
   [extend-env* : [-> (Listof Symbol) (Listof DenVal) Env Env]]
   [extend-env+ : [-> (Listof (Pair Symbol DenVal)) Env Env]]

   [extend-env-bind  : [-> Symbol Location Env Env]]
   [extend-env-bind* : [-> (Listof Symbol) (Listof Location) Env Env]]
   [extend-env-bind+ : [-> (Listof (Pair Symbol Location)) Env Env]]

   [extend-env? : [-> Env Boolean]]


   [extend-env-rec  : [-> Symbol Exp Env Env]]
   [extend-env-rec* : [-> (Listof Symbol) (Listof Exp) Env Env]]
   [extend-env-rec+ : [-> (Listof (Pair Symbol Exp)) Env Env]]

   [extend-env-rec-bind  : [-> Symbol Location Env Env]]
   [extend-env-rec-bind* : [-> (Listof Symbol) (Listof Location) Env Env]]
   [extend-env-rec-bind+ : [-> (Listof (Pair Symbol Location)) Env Env]]

   [extend-env-rec? : [-> Env Boolean]]

   [env?         : [-> Any Boolean : Env]]
   [apply-env    : [-> Env Symbol Location]]
   [has-binding? : [-> Env Symbol Boolean]]))