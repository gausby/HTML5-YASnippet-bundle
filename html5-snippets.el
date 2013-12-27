;;; html5-snippets.el --- Opinionated Yasnippets for HTML5

;; Copyright (C) 2013 Martin Gausby

;; Author: Martin Gausby <martin@gausby.dk>
;; Keywords: snippets

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Opinionated Yasnippets for HTML5

;; Installation

;; @todo

;;; Code:

(require 'yasnippet)


(require 'html5-snippet-helpers)
(setq html5-snippets-root (file-name-directory (or load-file-name
                                                     (buffer-file-name))))

;;;###autoload
(defun html5-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" html5-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas/load-directory snip-dir)))

;;;###autoload
(eval-after-load "yasnippet"
  '(html5-snippets-initialize))

(provide 'buster-snippets)
