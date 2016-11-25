<?php

/* default/skill/skill_wheel_student.tpl */
class __TwigTemplate_e12fa1a12de334982f85f3efd72a8fcbe868a58d6e5f53faefdb976e57f2af1d extends Twig_Template
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
        $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/skill/skill_wheel.js.tpl"), "default/skill/skill_wheel_student.tpl", 1)->display($context);
        // line 2
        echo "<script>
    /* Skill search input in the left menu */
    function check_skills_sidebar() {
        //Selecting only selected skills
        \$(\"#skill_id option:selected\").each(function () {
            var skill_id = \$(this).val();
            if (skill_id != \"\") {
                \$.ajax({
                    url: \"";
        // line 10
        echo (isset($context["url"]) ? $context["url"] : null);
        echo "&a=skill_exists\",
                    data: \"skill_id=\" + skill_id,
//                async: false,
                    success: function (return_value) {
                        if (return_value == 0) {
                            alert(\"";
        // line 15
        echo get_lang("SkillDoesNotExist");
        echo "\");
                            //Deleting select option tag
                            //\$(\"#skill_id option[value=\"+skill_id+\"]\").remove();
                            \$(\"#skill_id\").empty();

                            //Deleting holder
                            \$(\"#skill_search .holder li\").each(function () {
                                if (\$(this).attr(\"rel\") == skill_id) {
                                    \$(this).remove();
                                }
                            });
                        } else {
                            \$(\"#skill_id option[value=\" + skill_id + \"]\").remove();

                            //Deleting holder
                            \$(\"#skill_search .holder li\").each(function () {
                                if (\$(this).attr(\"rel\") == skill_id) {
                                    \$(this).remove();
                                }
                            });

                            if (\$('#skill_to_select_id_' + skill_id).length == 0) {
                                skill_info = get_skill_info(skill_id);
                                li = fill_skill_search_li(skill_id, skill_info.name);
                                \$(\"#skill_holder\").append(li);
                            }
                        }
                    }
                });
            }
        });
    }

    function fill_skill_search_li(skill_id, skill_name, checked) {
        checked_condition = '';
        if (checked == 1) {
            checked_condition = 'checked=checked';
        }
        return '\\
            <tr>\\n\\
                <td>' + skill_name + '</td>\\n\\
                <td class=\"text-right\">\\n\\
                    <button type=\"button\" id=\"skill_to_select_id_' + skill_id + '\" class=\"btn btn-warning btn-sm load_wheel\" data-id=\"' + skill_id + '\" title=\"";
        // line 57
        echo get_lang("PlaceOnTheWheel");
        echo "\" aria-label=\"";
        echo get_lang("PlaceOnTheWheel");
        echo "\">\\n\\
                        <span class=\"fa fa-crosshairs fa-fw\" aria-hidden=\"true\"></span>\\n\\
                    </button>\\n\\
                </td>\\n\\
            </tr>';
    }

    function load_skill_info(skill_id) {
        \$.ajax({
            url: url + '&a=get_skill_course_info&id=' + skill_id,
            async: false,
            success: function (data) {
                \$('#skill_info').html(data);
                return data;
            }
        });
    }

    \$(document).ready(function () {
        /* Skill search */

        /* Skill item list onclick  */
        \$(\"#skill_holder\").on(\"click\", \"input.skill_to_select\", function () {
            skill_id = \$(this).attr('rel');
            skill_name = \$(this).attr('name');
            add_skill_in_profile_list(skill_id, skill_name);
        });

        /* URL link when searching skills */
        \$(\"#skill_holder\").on(\"click\", \"button.load_wheel\", function () {
            skill_id = \$(this).data('id') || 0;
            skill_to_load_from_get = 0;
            load_nodes(skill_id, main_depth);
            load_skill_info(skill_id);
        });

        /* URL link when searching skills */
        \$(\"a.load_root\").on(\"click\", function (e) {
            e.preventDefault();

            skill_id = \$(this).attr('rel');
            skill_to_load_from_get = 0;
            load_nodes(skill_id, main_depth);
        });

        /* When clicking in a course title */
        \$(\"#skill_info\").on(\"click\", \"a.course_description_popup[rel]\", function (e) {
            e.preventDefault();

            var getCourseInfo = \$.ajax(url, {
                    data: {
                        a: 'get_course_info_popup',
                        code: \$(this).attr('rel')
                    }
                }
            );

            \$.when(getCourseInfo).done(function (response) {
                \$('#frm-course-info').find('.modal-body').html(response);
                \$('#frm-course-info').modal('show');
            });
        });

        /* change background color */
        \$('#skill-change-background-options li a').on('click', function (e) {
            e.preventDefault();

            var newBackgroundColor = \$(this).data('color') || '#FFF';

            \$(\"#page-back\").css(\"background\", newBackgroundColor);
        });

        /* Wheel skill popup form */

        \$(\"#skill_id\").fcbkcomplete({
            json_url: \"";
        // line 132
        echo (isset($context["url"]) ? $context["url"] : null);
        echo "&a=find_skills\",
            cache: false,
            filter_case: false,
            filter_hide: true,
            complete_text: \"";
        // line 136
        echo get_lang("EnterTheSkillNameToSearch");
        echo "\",
            firstselected: true,
            //onremove: \"testme\",
            onselect: \"check_skills_sidebar\",
            filter_selected: true,
            newel: true
        });

        load_nodes(0, main_depth);

        \$('#frm-course-info').on('', function () {
            \$('#frm-course-info').find('.modal-body').html('');
        });
        \$(\".facebook-auto\").css(\"width\",\"100%\");
        \$(\".facebook-auto ul\").css(\"width\",\"100%\");
        \$(\"ul.holder\").css(\"width\",\"100%\");
    });

</script>
<div id=\"page-back\" class=\"page-skill\">
    <div class=\"container-fluid\">
        <div class=\"row\">
            <div class=\"col-md-3 skill-options\">
                <p class=\"skill-home\">
                    <a class=\"btn btn-large btn-block btn-primary\" href=\"";
        // line 160
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web", array());
        echo "user_portal.php\">
                        <em class=\"fa fa-home\"></em> ";
        // line 161
        echo get_lang("ReturnToCourseList");
        echo "
                    </a>
                </p>
                <div class=\"panel panel-default\">
                    <div class=\"panel-body\">
                        <figure class=\"text-center\">
                            <img width=\"100px\" src=\"";
        // line 167
        echo $this->getAttribute((isset($context["user_info"]) ? $context["user_info"] : null), "avatar", array());
        echo "\" class=\"img-circle center-block\">
                            <figcaption class=\"avatar-author\">";
        // line 168
        echo $this->getAttribute((isset($context["user_info"]) ? $context["user_info"] : null), "complete_name", array());
        echo "</figcaption>
                        </figure>
                        <p class=\"text-center\">
                            <a href=\"";
        // line 171
        echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_main", array());
        echo "social/skills_ranking.php\" class=\"btn btn-default\" target=\"_blank\">";
        echo sprintf(get_lang("YourSkillRankingX"), (isset($context["ranking"]) ? $context["ranking"] : null));
        echo "</a>
                        </p>
                        <div class=\"text-center\">
                            ";
        // line 174
        if ( !twig_test_empty((isset($context["skills"]) ? $context["skills"] : null))) {
            // line 175
            echo "                                ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["skills"]) ? $context["skills"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["skill"]) {
                // line 176
                echo "                                    ";
                if (twig_test_empty($this->getAttribute($context["skill"], "icon", array()))) {
                    // line 177
                    echo "                                        <img src=\"";
                    echo Template::get_icon_path("badges.png", 32);
                    echo "\" width=\"32\" height=\"32\" alt=\"";
                    echo $this->getAttribute($context["skill"], "name", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["skill"], "name", array());
                    echo "\">
                                    ";
                } else {
                    // line 179
                    echo "                                        <img src=\"";
                    echo $this->getAttribute($context["skill"], "web_icon_thumb_path", array());
                    echo "\" width=\"32\" height=\"32\" alt=\"";
                    echo $this->getAttribute($context["skill"], "name", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["skill"], "name", array());
                    echo "\">
                                    ";
                }
                // line 181
                echo "                                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['skill'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 182
            echo "                            ";
        }
        // line 183
        echo "
                            ";
        // line 184
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(range(1, (5 - (isset($context["ranking"]) ? $context["ranking"] : null))));
        foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
            // line 185
            echo "                                <img src=\"";
            echo Template::get_icon_path("badges-default.png", 32);
            echo "\" width=\"32\" height=\"32\">
                            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 187
        echo "                        </div>
                    </div>
                </div>

                <!-- ACCORDION -->
                <div class=\"accordion\" id=\"accordion2\">
                    <div class=\"panel panel-default\">
                        <div class=\"panel-heading\">
                            <a data-toggle=\"collapse\" data-parent=\"#accordion2\" href=\"#collapseTwo\">
                                ";
        // line 196
        echo get_lang("GetNewSkills");
        echo "
                            </a>
                        </div>
                        <div id=\"collapseTwo\" class=\"panel-collapse collapse\">
                            <div class=\"panel-body\">
                                <!-- SEARCH -->
                                <div class=\"search-skill\">
                                    <h5 class=\"page-header\">";
        // line 203
        echo get_lang("SkillsSearch");
        echo "</h5>
                                    <form id=\"skill_search\" class=\"form-search\">
                                        <select id=\"skill_id\" name=\"skill_id\" /></select>
                                        <table id=\"skill_holder\" class=\"table table-condensed\"></table>
                                    </form>
                                </div>
                                <!-- END SEARCH -->
                                <!-- INFO SKILL -->
                                <h5 class=\"page-header\">";
        // line 211
        echo get_lang("SkillInfo");
        echo "</h5>
                                <div id=\"skill_info\"></div>
                                <!-- END INFO SKILL -->
                                <p>
                                    <a class=\"btn btn-default btn-block load_root\" rel=\"0\" href=\"#\">
                                        <em class=\"fa fa-eye\"></em> ";
        // line 216
        echo get_lang("ViewSkillsWheel");
        echo "
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=\"panel-group\" id=\"wheel-second-accordion\" role=\"tablist\" aria-multiselectable=\"true\">
                    <div class=\"panel panel-default\">
                        <div class=\"panel-heading\" role=\"tab\" id=\"wheel-legend-heading\">
                            <h4 class=\"panel-title\">
                                <a role=\"button\" data-toggle=\"collapse\" data-parent=\"#wheel-second-accordion\" href=\"#wheel-legend-collapse\" aria-expanded=\"true\" aria-controls=\"wheel-legend-collapse\">
                                    ";
        // line 228
        echo get_lang("Legend");
        echo "
                                </a>
                            </h4>
                        </div>
                        <div id=\"wheel-legend-collapse\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"wheel-legend-heading\">
                            <div class=\"panel-body\">
                                <ul class=\"fa-ul\">
                                    <li>
                                        <em class=\"fa fa-li fa-square skill-legend-basic\"></em> ";
        // line 236
        echo get_lang("BasicSkills");
        echo "
                                    </li>
                                    <li>
                                        <em class=\"fa fa-li fa-square skill-legend-badges\"></em> ";
        // line 239
        echo get_lang("SkillsYouAcquired");
        echo "
                                    </li>
                                    <li>
                                        <em class=\"fa fa-li fa-square skill-legend-add\"></em> ";
        // line 242
        echo get_lang("SkillsYouCanLearn");
        echo "
                                    </li>
                                    <li>
                                        <em class=\"fa fa-li fa-square skill-legend-search\"></em> ";
        // line 245
        echo get_lang("SkillsSearchedFor");
        echo "
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class=\"panel panel-default\">
                        <div class=\"panel-heading\" role=\"tab\" id=\"wheel-display-heading\">
                            <h4 class=\"panel-title\">
                                <a class=\"collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#wheel-second-accordion\" href=\"#wheel-display-collapse\" aria-expanded=\"false\" aria-controls=\"wheel-display-collapse\">
                                    ";
        // line 255
        echo get_lang("DisplayOptions");
        echo "
                                </a>
                            </h4>
                        </div>
                        <div id=\"wheel-display-collapse\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"wheel-display-heading\">
                            <div class=\"panel-body\">
                                <p>";
        // line 261
        echo get_lang("ChooseABackgroundColor");
        echo "</p>
                                <ul class=\"list-unstyled\" id=\"skill-change-background-options\">
                                    <li><a href=\"#\" data-color=\"#FFFFFF\">";
        // line 263
        echo get_lang("White");
        echo "</a></li>
                                    <li><a href=\"#\" data-color=\"#000000\">";
        // line 264
        echo get_lang("Black");
        echo "</a></li>
                                    <li><a href=\"#\" data-color=\"#A9E2F3\">";
        // line 265
        echo "LightBlue";
        echo "</a></li>
                                    <li><a href=\"#\" data-color=\"#848484\">";
        // line 266
        echo get_lang("Gray");
        echo "</a></li>
                                    <li><a href=\"#\" data-color=\"#F7F8E0\">";
        // line 267
        echo get_lang("Corn");
        echo "</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END ACCORDEON -->
            </div>
            <div id=\"wheel_container\" class=\"col-md-9\">
                <div id=\"skill_wheel\">
                    <img src=\"\">
                </div>
            </div>
        </div>
    </div>
</div>

<div class=\"modal fade\" id=\"frm-skill\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"form-skill-title\" aria-hidden=\"true\">
    <div class=\"modal-dialog modal-lg\">
        <div class=\"modal-content\">
            <div class=\"modal-header\">
                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"";
        // line 288
        echo get_lang("Close");
        echo "\">
                    <span aria-hidden=\"true\">&times;</span>
                </button>
                <h4 class=\"modal-title\" id=\"form-skill-title\">";
        // line 291
        echo get_lang("Skill");
        echo "</h4>
            </div>
            <div class=\"modal-body\">
                ";
        // line 294
        echo (isset($context["dialogForm"]) ? $context["dialogForm"] : null);
        echo "
            </div>
            <div class=\"modal-footer\">
                <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">
                    ";
        // line 298
        echo get_lang("Close");
        echo "
                </button>
            </div>
        </div>
    </div>
</div>

<div class=\"modal fade\" id=\"frm-course-info\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"form-course-info-title\" aria-hidden=\"true\">
    <div class=\"modal-dialog\">
        <div class=\"modal-content\">
            <div class=\"modal-header\">
                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"";
        // line 309
        echo get_lang("Close");
        echo "\">
                    <span aria-hidden=\"true\">&times;</span>
                </button>
                <h4 class=\"modal-title\" id=\"form-course-info-title\">";
        // line 312
        echo get_lang("ChooseCourse");
        echo "</h4>
            </div>
            <div class=\"modal-body\"></div>
            <div class=\"modal-footer\">
                <button type=\"button\" class=\"btn btn-primary\" data-dismiss=\"modal\">";
        // line 316
        echo get_lang("Close");
        echo "</button>
            </div>
        </div>
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "default/skill/skill_wheel_student.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  481 => 316,  474 => 312,  468 => 309,  454 => 298,  447 => 294,  441 => 291,  435 => 288,  411 => 267,  407 => 266,  403 => 265,  399 => 264,  395 => 263,  390 => 261,  381 => 255,  368 => 245,  362 => 242,  356 => 239,  350 => 236,  339 => 228,  324 => 216,  316 => 211,  305 => 203,  295 => 196,  284 => 187,  275 => 185,  271 => 184,  268 => 183,  265 => 182,  259 => 181,  249 => 179,  239 => 177,  236 => 176,  231 => 175,  229 => 174,  221 => 171,  215 => 168,  211 => 167,  202 => 161,  198 => 160,  171 => 136,  164 => 132,  84 => 57,  39 => 15,  31 => 10,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/skill/skill_wheel_student.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\skill\\skill_wheel_student.tpl");
    }
}
