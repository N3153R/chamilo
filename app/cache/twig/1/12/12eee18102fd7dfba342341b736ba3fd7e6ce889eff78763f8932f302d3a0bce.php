<?php

/* default/learnpath/view.tpl */
class __TwigTemplate_cde51c23b1fd98f99b4713c08618690b0f7a0d716b8febb9e8e957afabbba328 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div id=\"learning_path_main\" class=\"";
        echo (((isset($context["is_allowed_to_edit"]) ? $context["is_allowed_to_edit"] : null)) ? ("lp-view-include-breadcrumb") : (""));
        echo " ";
        echo ((((isset($context["lp_mode"]) ? $context["lp_mode"] : null) == "embedframe")) ? ("lp-view-collapsed") : (""));
        echo "\">
    ";
        // line 2
        if ((isset($context["is_allowed_to_edit"]) ? $context["is_allowed_to_edit"] : null)) {
            // line 3
            echo "        <div id=\"learning_path_breadcrumb_zone\" class=\"hidden-xs\">
            ";
            // line 4
            echo (isset($context["breadcrumb"]) ? $context["breadcrumb"] : null);
            echo "
        </div>
    ";
        }
        // line 7
        echo "        <div id=\"learning_path_left_zone\" class=\"sidebar-scorm\">
            <div class=\"lp-view-zone-container\">
                <div id=\"scorm-info\">
                    <div id=\"panel-scorm\" class=\"panel-body\">
                        <div class=\"image-avatar\">
                            ";
        // line 12
        if (((isset($context["lp_author"]) ? $context["lp_author"] : null) == "")) {
            // line 13
            echo "                               <div class=\"text-center\">
                                    ";
            // line 14
            echo (isset($context["lp_preview_image"]) ? $context["lp_preview_image"] : null);
            echo "
                                </div>
                            ";
        } else {
            // line 17
            echo "                                <div class=\"media\">
                                    <div class=\"media-left\">
                                        ";
            // line 19
            echo (isset($context["lp_preview_image"]) ? $context["lp_preview_image"] : null);
            echo "
                                    </div>
                                    <div class=\"media-body\">
                                        <div class=\"description-autor\"> ";
            // line 22
            echo (isset($context["lp_author"]) ? $context["lp_author"] : null);
            echo " </div>
                                    </div>
                                </div>
                            ";
        }
        // line 26
        echo "                        </div>

                        ";
        // line 28
        if ((isset($context["show_audio_player"]) ? $context["show_audio_player"] : null)) {
            // line 29
            echo "                            <div id=\"lp_media_file\" class=\"audio-scorm\">
                                ";
            // line 30
            echo (isset($context["media_player"]) ? $context["media_player"] : null);
            echo "
                            </div>
                        ";
        }
        // line 33
        echo "                        ";
        if (((isset($context["gamification_mode"]) ? $context["gamification_mode"] : null) == 1)) {
            // line 34
            echo "                            <!--- gamification -->
                            <div id=\"scorm-gamification\">
                                <div class=\"row\">
                                    <div class=\"col-xs-6\">
                                        ";
            // line 38
            if (((isset($context["gamification_stars"]) ? $context["gamification_stars"] : null) > 0)) {
                // line 39
                echo "                                            ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(range(1, (isset($context["gamification_stars"]) ? $context["gamification_stars"] : null)));
                foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                    // line 40
                    echo "                                                <em class=\"fa fa-star level\"></em>
                                            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 42
                echo "                                        ";
            }
            // line 43
            echo "
                                        ";
            // line 44
            if (((isset($context["gamification_stars"]) ? $context["gamification_stars"] : null) < 4)) {
                // line 45
                echo "                                            ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(range(1, (4 - (isset($context["gamification_stars"]) ? $context["gamification_stars"] : null))));
                foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                    // line 46
                    echo "                                                <em class=\"fa fa-star\"></em>
                                            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 48
                echo "                                        ";
            }
            // line 49
            echo "                                    </div>
                                    <div class=\"col-xs-6 text-right\">
                                        ";
            // line 51
            echo sprintf(get_lang("XPoints"), (isset($context["gamification_points"]) ? $context["gamification_points"] : null));
            echo "
                                    </div>
                                </div>
                                <div class=\"row\">
                                    <div class=\"col-xs-12 navegation-bar\">
                                        <div id=\"progress_bar\">
                                            ";
            // line 57
            echo (isset($context["progress_bar"]) ? $context["progress_bar"] : null);
            echo "
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <!--- end gamification -->
                        ";
        } else {
            // line 64
            echo "                            <div id=\"progress_bar\">
                                ";
            // line 65
            echo (isset($context["progress_bar"]) ? $context["progress_bar"] : null);
            echo "
                            </div>
                        ";
        }
        // line 68
        echo "                        <div class=\"visible-xs-block movil-toolbar\">
                            <ul class=\"btn-movil\">
                                <li>
                                    <a href=\"";
        // line 71
        echo (isset($context["button_home_url"]) ? $context["button_home_url"] : null);
        echo "\" class=\"icon-toolbar\" target=\"_self\" onclick=\"javascript: window.parent.API.save_asset();\">
                                        <em class=\"fa fa-home\"></em> <span class=\"hidden-xs hidden-sm\"></span>
                                    </a>
                                </li>
                                <li>
                                    <button type=\"button\" id=\"lp-view-expand-button\" class=\"icon-toolbar expand visible-xs-block\">
                                        <span class=\"fa fa-expand\" aria-hidden=\"true\"></span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                        ";
        // line 82
        echo (isset($context["teacher_toc_buttons"]) ? $context["teacher_toc_buttons"] : null);
        echo "
                    </div>
                </div>
            ";
        // line 86
        echo "            <div id=\"toc_id\" class=\"scorm-body\" name=\"toc_name\">
                <div id=\"learning_path_toc\" class=\"scorm-list\">
                    <h1 class=\"scorm-title\">";
        // line 88
        echo (isset($context["lp_title_scorm"]) ? $context["lp_title_scorm"] : null);
        echo "</h1>
                    ";
        // line 89
        echo (isset($context["lp_html_toc"]) ? $context["lp_html_toc"] : null);
        echo "
                </div>
            </div>
            ";
        // line 93
        echo "            </div>
        </div>
        ";
        // line 96
        echo "
        ";
        // line 98
        echo "        ";
        // line 99
        echo "        <div id=\"learning_path_right_zone\" class=\"content-scorm\">
            <div class=\"lp-view-zone-container\">
                <div id=\"lp_navigation_elem\" class=\"navegation-bar pull-right text-right\">
                    <a href=\"#\" id=\"lp-view-expand-toggle\" class=\"icon-toolbar expand\" role=\"button\">
                        ";
        // line 103
        if (((isset($context["lp_mode"]) ? $context["lp_mode"] : null) == "embedframe")) {
            // line 104
            echo "                            <span class=\"fa fa-compress\" aria-hidden=\"true\"></span>
                            <span class=\"sr-only\">";
            // line 105
            echo get_lang("Expand");
            echo "</span>
                        ";
        } else {
            // line 107
            echo "                            <span class=\"fa fa-expand\" aria-hidden=\"true\"></span>
                            <span class=\"sr-only\">";
            // line 108
            echo get_lang("Expand");
            echo "</span>
                        ";
        }
        // line 110
        echo "                    </a>
                    <a id=\"home-course\" href=\"";
        // line 111
        echo (isset($context["button_home_url"]) ? $context["button_home_url"] : null);
        echo "\" class=\"icon-toolbar\" target=\"_self\" onclick=\"javascript: window.parent.API.save_asset();\">
                        <em class=\"fa fa-home\"></em> <span class=\"hidden-xs hidden-sm\"></span>
                    </a>
                    ";
        // line 114
        echo (isset($context["navigation_bar"]) ? $context["navigation_bar"] : null);
        echo "
                </div>

                <div class=\"lp-view-tabs\">
                    <ul id=\"navTabs\" class=\"nav nav-tabs\" role=\"tablist\">
                        <li role=\"presentation\" class=\"active\">
                            <a href=\"#lp-view-content\" aria-controls=\"lp-view-content\" role=\"tab\" data-toggle=\"tab\">
                                <span class=\"fa fa-book fa-2x fa-fw\" aria-hidden=\"true\"></span><span class=\"sr-only\">";
        // line 121
        echo get_lang("Lesson");
        echo "</span>
                            </a>
                        </li>
                        <li role=\"presentation\">
                            <a href=\"#lp-view-forum\" aria-controls=\"lp-view-forum\" role=\"tab\" data-toggle=\"tab\">
                                <span class=\"fa fa-commenting-o fa-2x fa-fw\" aria-hidden=\"true\"></span><span class=\"sr-only\">";
        // line 126
        echo get_lang("Forum");
        echo "</span>
                            </a>
                        </li>
                    </ul>

                    <div class=\"tab-content\">
                        <div role=\"tabpanel\" class=\"tab-pane active\" id=\"lp-view-content\">
                            <div id=\"wrapper-iframe\" style=\"width:100%; height:100%\">
                            ";
        // line 134
        if (((isset($context["lp_mode"]) ? $context["lp_mode"] : null) == "fullscreen")) {
            // line 135
            echo "                                <iframe id=\"content_id_blank\" name=\"content_name_blank\" src=\"blank.php\" style=\"width:100%; height:100%\" border=\"0\" frameborder=\"0\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>
                            ";
        } else {
            // line 137
            echo "                                <iframe id=\"content_id\" name=\"content_name\" src=\"";
            echo (isset($context["iframe_src"]) ? $context["iframe_src"] : null);
            echo "\" style=\"width:100%; height:100%\" border=\"0\" frameborder=\"0\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>
                            ";
        }
        // line 139
        echo "                            </div>
                        </div>
                        <div role=\"tabpanel\" class=\"tab-pane\" id=\"lp-view-forum\">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        ";
        // line 149
        echo "</div>

<script>
(function () {
    var LPViewUtils = {
        setHeightLPToc: function () {
            var scormInfoHeight = \$('#scorm-info').outerHeight(true);

            \$('#learning_path_toc').css({
                top: scormInfoHeight
            });
        }
    };

    \$(document).on('ready', function () {
        if (/iPhone|iPod|iPad/.test(navigator.userAgent)) {
          \$('#wrapper-iframe').css({
            'overflow' : 'auto',
            'position' : 'relative',
            '-webkit-overflow-scrolling': 'touch'
          });
        }

        ";
        // line 172
        if (((isset($context["lp_mode"]) ? $context["lp_mode"] : null) == "embedframe")) {
            // line 173
            echo "            //\$('#learning_path_main').addClass('lp-view-collapsed');
            \$('#lp-view-expand-button, #lp-view-expand-toggle').on('click', function (e) {
            e.preventDefault();

            \$('#learning_path_main').toggleClass('lp-view-collapsed');

            \$('#lp-view-expand-toggle span.fa').toggleClass('fa-compress');
            \$('#lp-view-expand-toggle span.fa').toggleClass('fa-expand');
        });
        ";
        } else {
            // line 183
            echo "        \$('#lp-view-expand-button, #lp-view-expand-toggle').on('click', function (e) {
            e.preventDefault();

            \$('#learning_path_main').toggleClass('lp-view-collapsed');

            \$('#lp-view-expand-toggle span.fa').toggleClass('fa-expand');
            \$('#lp-view-expand-toggle span.fa').toggleClass('fa-compress');
        });

        ";
        }
        // line 193
        echo "
        \$('.lp-view-tabs').on('click', '.disabled', function (e) {
            e.preventDefault();
        });

        \$('a#ui-option').on('click', function (e) {
            e.preventDefault();

            var icon = \$(this).children('.fa');

            if (icon.is('.fa-chevron-up')) {
                icon.removeClass('fa-chevron-up').addClass('fa-chevron-down');

                return;
            }

            icon.removeClass('fa-chevron-down').addClass('fa-chevron-up');
        });

        LPViewUtils.setHeightLPToc();

        \$('.scorm_item_normal a, #scorm-previous, #scorm-next').on('click', function () {
            \$('.lp-view-tabs').animate({opacity: 0}, 500);
        });

        \$('#learning_path_right_zone #lp-view-content iframe').on('load', function () {
            \$('.lp-view-tabs a[href=\"#lp-view-content\"]').tab('show');

            \$('.lp-view-tabs').animate({opacity: 1}, 500);
        });

        loadForumThread(";
        // line 224
        echo (isset($context["lp_id"]) ? $context["lp_id"] : null);
        echo ", ";
        echo (isset($context["lp_current_item_id"]) ? $context["lp_current_item_id"] : null);
        echo ");
        checkCurrentItemPosition(";
        // line 225
        echo (isset($context["lp_current_item_id"]) ? $context["lp_current_item_id"] : null);
        echo ");

        ";
        // line 227
        if (twig_in_filter((isset($context["glossary_extra_tools"]) ? $context["glossary_extra_tools"] : null), (isset($context["glossary_tool_availables"]) ? $context["glossary_tool_availables"] : null))) {
            // line 228
            echo "            // Loads the glossary library.
            (function () {
                ";
            // line 230
            if (((isset($context["show_glossary_in_documents"]) ? $context["show_glossary_in_documents"] : null) == "ismanual")) {
                // line 231
                echo "                    \$.frameReady(
                        function(){
                            //  \$(\"<div>I am a div courses</div>\").prependTo(\"body\");
                        },
                        \"top.content_name\",
                        {
                            load: [
                                { type:\"script\", id:\"_fr1\", src:\"";
                // line 238
                echo (isset($context["jquery_web_path"]) ? $context["jquery_web_path"] : null);
                echo "\"},
                                { type:\"script\", id:\"_fr4\", src:\"";
                // line 239
                echo (isset($context["jquery_ui_js_web_path"]) ? $context["jquery_ui_js_web_path"] : null);
                echo "\"},
                                { type:\"stylesheet\", id:\"_fr5\", src:\"";
                // line 240
                echo (isset($context["jquery_ui_css_web_path"]) ? $context["jquery_ui_css_web_path"] : null);
                echo "\"},
                                { type:\"script\", id:\"_fr2\", src:\"";
                // line 241
                echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_lib", array());
                echo "javascript/jquery.highlight.js\"},
                                ";
                // line 242
                echo (isset($context["fix_link"]) ? $context["fix_link"] : null);
                echo "
                            ]
                        }
                    );
                ";
            } elseif ((            // line 246
(isset($context["show_glossary_in_documents"]) ? $context["show_glossary_in_documents"] : null) == "isautomatic")) {
                // line 247
                echo "                    \$.frameReady(
                        function(){
                            //  \$(\"<div>I am a div courses</div>\").prependTo(\"body\");
                        },
                        \"top.content_name\",
                        {
                            load: [
                                { type:\"script\", id:\"_fr1\", src:\"";
                // line 254
                echo (isset($context["jquery_web_path"]) ? $context["jquery_web_path"] : null);
                echo "\"},
                                { type:\"script\", id:\"_fr4\", src:\"";
                // line 255
                echo (isset($context["jquery_ui_js_web_path"]) ? $context["jquery_ui_js_web_path"] : null);
                echo "\"},
                                { type:\"stylesheet\", id:\"_fr5\", src:\"";
                // line 256
                echo (isset($context["jquery_ui_css_web_path"]) ? $context["jquery_ui_css_web_path"] : null);
                echo "\"},
                                { type:\"script\", id:\"_fr2\", src:\"";
                // line 257
                echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_lib", array());
                echo "javascript/jquery.highlight.js\"},
                                ";
                // line 258
                echo (isset($context["fix_link"]) ? $context["fix_link"] : null);
                echo "
                            ]
                        }
                    );
                ";
            } elseif ((            // line 262
(isset($context["fix_link"]) ? $context["fix_link"] : null) != "")) {
                // line 263
                echo "                    \$.frameReady(
                        function(){
                            //  \$(\"<div>I am a div courses</div>\").prependTo(\"body\");
                        },
                        \"top.content_name\",
                        {
                            load: [
                                { type:\"script\", id:\"_fr1\", src:\"";
                // line 270
                echo (isset($context["jquery_web_path"]) ? $context["jquery_web_path"] : null);
                echo "\"},
                                { type:\"script\", id:\"_fr4\", src:\"";
                // line 271
                echo (isset($context["jquery_ui_js_web_path"]) ? $context["jquery_ui_js_web_path"] : null);
                echo "\"},
                                { type:\"stylesheet\", id:\"_fr5\", src:\"";
                // line 272
                echo (isset($context["jquery_ui_css_web_path"]) ? $context["jquery_ui_css_web_path"] : null);
                echo "\"},
                                ";
                // line 273
                echo (isset($context["fix_link"]) ? $context["fix_link"] : null);
                echo "
                            ]
                        }
                    );
                ";
            }
            // line 278
            echo "            })();
        ";
        }
        // line 280
        echo "
        \$('iframe#content_id')
            .on('load', function () {
                \$.frameReady(function () {
                }, 'top.content_name', {
                    load: [
                        {type: 'script', id: '_fr1', src: '";
        // line 286
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "web/assets/jquery/dist/jquery.min.js'},
                        {type: 'script', id: '_fr7', src: '";
        // line 287
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "web/assets/MathJax/MathJax.js?config=AM_HTMLorMML'},
                        {type: 'script', id: '_fr4', src: '";
        // line 288
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "web/assets/jquery-ui/jquery-ui.min.js'},
                        {type: 'stylesheet', id: '_fr5', src: '";
        // line 289
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "web/assets/jquery-ui/themes/smoothness/jquery-ui.min.css'},
                        {type: 'stylesheet', id: '_fr6', src: '";
        // line 290
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "web/assets/jquery-ui/themes/smoothness/theme.css'},
                        {type: 'script', id: '_fr2', src: '";
        // line 291
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_lib", array());
        echo "javascript/jquery.highlight.js'},
                        {type: 'script', id: '_fr3', src: '";
        // line 292
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_main", array());
        echo "glossary/glossary.js.php'}
                    ]
                });
            });
    });

    \$(window).on('resize', function () {
        LPViewUtils.setHeightLPToc();
    });
})();
</script>
";
    }

    public function getTemplateName()
    {
        return "default/learnpath/view.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  534 => 292,  530 => 291,  526 => 290,  522 => 289,  518 => 288,  514 => 287,  510 => 286,  502 => 280,  498 => 278,  490 => 273,  486 => 272,  482 => 271,  478 => 270,  469 => 263,  467 => 262,  460 => 258,  456 => 257,  452 => 256,  448 => 255,  444 => 254,  435 => 247,  433 => 246,  426 => 242,  422 => 241,  418 => 240,  414 => 239,  410 => 238,  401 => 231,  399 => 230,  395 => 228,  393 => 227,  388 => 225,  382 => 224,  349 => 193,  337 => 183,  325 => 173,  323 => 172,  298 => 149,  287 => 139,  281 => 137,  277 => 135,  275 => 134,  264 => 126,  256 => 121,  246 => 114,  240 => 111,  237 => 110,  232 => 108,  229 => 107,  224 => 105,  221 => 104,  219 => 103,  213 => 99,  211 => 98,  208 => 96,  204 => 93,  198 => 89,  194 => 88,  190 => 86,  184 => 82,  170 => 71,  165 => 68,  159 => 65,  156 => 64,  146 => 57,  137 => 51,  133 => 49,  130 => 48,  123 => 46,  118 => 45,  116 => 44,  113 => 43,  110 => 42,  103 => 40,  98 => 39,  96 => 38,  90 => 34,  87 => 33,  81 => 30,  78 => 29,  76 => 28,  72 => 26,  65 => 22,  59 => 19,  55 => 17,  49 => 14,  46 => 13,  44 => 12,  37 => 7,  31 => 4,  28 => 3,  26 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/learnpath/view.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\learnpath\\view.tpl");
    }
}
