<?php

/**
 * Kill Themes
 *
 * @package      hapas
 * @author       Hansanghyeon
 * @copyright    Hansanghyeon <dandan9509@gmail.com>
 * @description  twentysixteen hidden
 **/

function kill_theme_wpse_188906($themes)
{
  unset($themes['twentysixteen']);
  return $themes;
}
add_filter('wp_prepare_themes_for_js', 'kill_theme_wpse_188906');
