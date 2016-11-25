<?php

/* default/skill/student_report.tpl */
class __TwigTemplate_1589366131f9cfa49034f1fda6d1c99c9db65b1e3709d78f2af7eb79f95534b7 extends Twig_Template
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
        if ((isset($context["allowSkillsTool"]) ? $context["allowSkillsTool"] : null)) {
            // line 2
            echo "    <div class=\"btn-group\">
        <a class=\"btn btn-default\" href=\"";
            // line 3
            echo $this->getAttribute((isset($context["_p"]) ? $context["_p"] : null), "web_main", array());
            echo "social/skills_wheel.php\">";
            echo get_lang("SkillsWheel");
            echo "</a>
    </div>
";
        }
        // line 6
        echo "
<h1 class=\"page-header\">";
        // line 7
        echo get_lang("SkillsAcquired");
        echo "</h1>

";
        // line 9
        if ((isset($context["rows"]) ? $context["rows"] : null)) {
            // line 10
            echo "    <table class=\"table\">
        <thead>
            <tr>
                <th>";
            // line 13
            echo get_lang("Skill");
            echo "</th>
                <th>";
            // line 14
            echo get_lang("Date");
            echo "</th>
                <th>";
            // line 15
            echo get_lang("Course");
            echo "</th>
            </tr>
        </thead>
        <tbody>
            ";
            // line 19
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["rows"]) ? $context["rows"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["row"]) {
                // line 20
                echo "                <tr>
                    <td>";
                // line 21
                echo $this->getAttribute($context["row"], "skillName", array());
                echo "</td>
                    <td>";
                // line 22
                echo $this->getAttribute($context["row"], "achievedAt", array());
                echo "</td>
                    <td><img src=\"";
                // line 23
                echo $this->getAttribute($context["row"], "courseImage", array());
                echo "\" alt=\"";
                echo $this->getAttribute($context["row"], "courseName", array());
                echo "\" width=\"32\"> ";
                echo $this->getAttribute($context["row"], "courseName", array());
                echo "</td>
                </tr>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['row'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 26
            echo "        </tbody>
    </table>
";
        } else {
            // line 29
            echo "    <div class=\"alert alert-info\">
        ";
            // line 30
            echo get_lang("NoResults");
            echo "
    </div>
";
        }
    }

    public function getTemplateName()
    {
        return "default/skill/student_report.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  98 => 30,  95 => 29,  90 => 26,  77 => 23,  73 => 22,  69 => 21,  66 => 20,  62 => 19,  55 => 15,  51 => 14,  47 => 13,  42 => 10,  40 => 9,  35 => 7,  32 => 6,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/skill/student_report.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\skill\\student_report.tpl");
    }
}
