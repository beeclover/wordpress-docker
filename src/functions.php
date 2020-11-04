<?php

/**
 * functions 폴더에 모든 php 파일 포함
 * template라는 파일명은 예외처리
 * 
 * @author Hansanghyeon
 */
foreach (glob(get_stylesheet_directory() . "/functions/*.php") as $filename) {
  $test = str_replace(get_stylesheet_directory() . '/functions/', '', $filename);
  if (preg_match_all('/^((?!template).)*\.php/', $test)) {
    include $filename;
  }
}
