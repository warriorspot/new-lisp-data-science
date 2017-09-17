#!/usr/local/bin/newlisp

(load "test.lsp")

(net-eval "localhost" 4701 '(setq fileurl "http://localhost:8001/en_US.news.txt"))
(net-eval "localhost" 4702 '(setq fileurl "http://localhost:8001/en_US.blogs.txt"))

(setq results
    (net-eval '(
        ("localhost" 4701 '(foo))
        ("localhost" 4702 '(foo))
    )))

(setq results (append (results 0) (results 1)))
(setq keys (unique (all-keys results)))
(setq nodes (find-nodes keys results))
(dolist (x (map (lambda (x) (combine-by-key x +)) nodes)) (println x))


