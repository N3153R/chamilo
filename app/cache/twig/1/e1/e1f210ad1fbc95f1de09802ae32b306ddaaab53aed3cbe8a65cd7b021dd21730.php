<?php

/* bbb/listing.tpl */
class __TwigTemplate_2bc7c2ebeefc3df5f58d3f3d62b71209844c8b72a9dec109275db8ee6a82ca0c extends Twig_Template
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
        echo "<div class =\"row\">

";
        // line 3
        if (((isset($context["bbb_status"]) ? $context["bbb_status"] : null) == true)) {
            // line 4
            echo "  ";
            if (((isset($context["show_join_button"]) ? $context["show_join_button"] : null) == true)) {
                // line 5
                echo "    <div class =\"span12\" style=\"text-align:center\">
        ";
                // line 6
                echo (isset($context["form"]) ? $context["form"] : null);
                echo "
        <p>
            <a href=\"";
                // line 8
                echo (isset($context["conference_url"]) ? $context["conference_url"] : null);
                echo "\" target=\"_blank\" class=\"btn btn-primary btn-large\">
                ";
                // line 9
                echo get_lang("EnterConference");
                echo "
            </a>
            <span id=\"users_online\" class=\"label label-warning\">
                ";
                // line 12
                echo sprintf(get_lang("XUsersOnLine"), (isset($context["users_online"]) ? $context["users_online"] : null));
                echo "
            </span>
        </p>

        <div class=\"well\">
            <strong>";
                // line 17
                echo get_lang("UrlMeetingToShare");
                echo "</strong>
            <input type=\"text\" class=\"form-control text-center\" readonly value=\"";
                // line 18
                echo (isset($context["conference_url"]) ? $context["conference_url"] : null);
                echo "\">
        </div>
    </div>
  ";
            }
            // line 22
            echo "
    <div class =\"span12\">
        <div class=\"page-header\">
            <h2>";
            // line 25
            echo get_lang("RecordList");
            echo "</h2>
        </div>

        <table class=\"table\">
            <tr>
                <!-- th>#</th -->
                <th>";
            // line 31
            echo get_lang("CreatedAt");
            echo "</th>
                <th>";
            // line 32
            echo get_lang("Status");
            echo "</th>
                <th>";
            // line 33
            echo get_lang("Records");
            echo "</th>

                ";
            // line 35
            if ((isset($context["allow_to_edit"]) ? $context["allow_to_edit"] : null)) {
                // line 36
                echo "                    <th>";
                echo get_lang("Actions");
                echo "</th>
                ";
            }
            // line 38
            echo "
            </tr>
            ";
            // line 40
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["meetings"]) ? $context["meetings"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["meeting"]) {
                // line 41
                echo "            <tr>
                <!-- td>";
                // line 42
                echo $this->getAttribute($context["meeting"], "id", array());
                echo "</td -->
                ";
                // line 43
                if (($this->getAttribute($context["meeting"], "visibility", array()) == 0)) {
                    // line 44
                    echo "                    <td class=\"muted\">";
                    echo $this->getAttribute($context["meeting"], "created_at", array());
                    echo "</td>
                ";
                } else {
                    // line 46
                    echo "                    <td>";
                    echo $this->getAttribute($context["meeting"], "created_at", array());
                    echo "</td>
                ";
                }
                // line 48
                echo "                <td>
                    ";
                // line 49
                if (($this->getAttribute($context["meeting"], "status", array()) == 1)) {
                    // line 50
                    echo "                        <span class=\"label label-success\">";
                    echo get_lang("MeetingOpened");
                    echo "</span>
                    ";
                } else {
                    // line 52
                    echo "                        <span class=\"label label-info\">";
                    echo get_lang("MeetingClosed");
                    echo "</span>
                    ";
                }
                // line 54
                echo "                </td>
                <td>
                    ";
                // line 56
                if (($this->getAttribute($context["meeting"], "record", array()) == 1)) {
                    // line 57
                    echo "                        ";
                    // line 58
                    echo "                        ";
                    echo $this->getAttribute($context["meeting"], "show_links", array());
                    echo "
                    ";
                }
                // line 60
                echo "                </td>

                ";
                // line 62
                if ((isset($context["allow_to_edit"]) ? $context["allow_to_edit"] : null)) {
                    // line 63
                    echo "                    <td>
                    ";
                    // line 64
                    if (($this->getAttribute($context["meeting"], "status", array()) == 1)) {
                        // line 65
                        echo "                        <a class=\"btn btn-default\" href=\"";
                        echo $this->getAttribute($context["meeting"], "end_url", array());
                        echo " \"> ";
                        echo get_lang("CloseMeeting");
                        echo "</a>
                    ";
                    } else {
                        // line 67
                        echo "                        ";
                        echo $this->getAttribute($context["meeting"], "action_links", array());
                        echo "
                    ";
                    }
                    // line 69
                    echo "                    </td>
                ";
                }
                // line 71
                echo "
            </tr>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['meeting'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 74
            echo "        </table>
    </div>
";
        } else {
            // line 77
            echo "    <div class =\"span12\" style=\"text-align:center\">
        ";
            // line 78
            echo Display::return_message_and_translate("ServerIsNotRunning", "warning");
            echo "
    </div>
";
        }
        // line 81
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "bbb/listing.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  211 => 81,  205 => 78,  202 => 77,  197 => 74,  189 => 71,  185 => 69,  179 => 67,  171 => 65,  169 => 64,  166 => 63,  164 => 62,  160 => 60,  154 => 58,  152 => 57,  150 => 56,  146 => 54,  140 => 52,  134 => 50,  132 => 49,  129 => 48,  123 => 46,  117 => 44,  115 => 43,  111 => 42,  108 => 41,  104 => 40,  100 => 38,  94 => 36,  92 => 35,  87 => 33,  83 => 32,  79 => 31,  70 => 25,  65 => 22,  58 => 18,  54 => 17,  46 => 12,  40 => 9,  36 => 8,  31 => 6,  28 => 5,  25 => 4,  23 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "bbb/listing.tpl", "C:\\xampp\\htdocs\\chamilo\\plugin\\bbb\\listing.tpl");
    }
}
