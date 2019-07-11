;;; shrink-path-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "shrink-path" "shrink-path.el" (0 0 0 0))
;;; Generated autoloads from shrink-path.el

(autoload 'shrink-path-dirs "shrink-path" "\
Given PATH return fish-styled shrunken down path.
TRUNCATE-TAIL will cause the function to truncate the last directory too.

\(fn &optional PATH TRUNCATE-TAIL)" nil nil)

(autoload 'shrink-path-expand "shrink-path" "\
Return expanded path from STR if found or list of matches on multiple.
The path referred to by STR has to exist for this to work.
If ABSOLUTE-P is t the returned path will be absolute.

\(fn STR &optional ABSOLUTE-P)" nil nil)

(autoload 'shrink-path-prompt "shrink-path" "\
Return cons of BASE and DIR for PWD.
If PWD isn't provided will default to `default-directory'.

\(fn &optional PWD)" nil nil)

(autoload 'shrink-path-file "shrink-path" "\
Return FILE's shrunk down path and filename.
TRUNCATE-TAIL controls if the last directory should also be shortened.

\(fn FILE &optional TRUNCATE-TAIL)" nil nil)

(autoload 'shrink-path-file-expand "shrink-path" "\
Return STR's expanded filename.
The path referred to by STR has to exist for this to work.
If EXISTS-P is t the filename also has to exist.
If ABSOLUTE-P is t the returned path will be absolute.

\(fn STR &optional EXISTS-P ABSOLUTE-P)" nil nil)

(autoload 'shrink-path-file-mixed "shrink-path" "\
Returns list of mixed truncated file name locations.

Consists of SHRINK-PATH's parent, SHRINK-PATH basename, relative REL-PATH and
FILENAME.
For use in modeline or prompts, etc.

\(fn SHRINK-PATH REL-PATH FILENAME)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "shrink-path" '("shrink-path--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; shrink-path-autoloads.el ends here
