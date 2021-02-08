<?php

/**
 * Kill Themes
 *
 * @author       Hansanghyeon
 * @copyright    Hansanghyeon <999@hyeon.pro>
 * @description  twentynineteen hidden
 **/

function kill_theme_wpse_188906($themes)
{
  unset($themes['twentynineteen']);
  return $themes;
}
add_filter('wp_prepare_themes_for_js', 'kill_theme_wpse_188906');
