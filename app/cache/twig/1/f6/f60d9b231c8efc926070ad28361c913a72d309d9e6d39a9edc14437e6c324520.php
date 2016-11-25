<?php

/* bbb/admin.tpl */
class __TwigTemplate_9e94fc3d47a482effe24e7b18394319ba6fc9ac008e5ef8a22a781b99e09e72c extends Twig_Template
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
        echo "<table class=\"table table-hover table-striped\">
    <thead>
        <tr>
            <th>";
        // line 4
        echo get_lang("CreatedAt");
        echo "</th>
            <th>";
        // line 5
        echo get_lang("Status");
        echo "</th>
            <th>";
        // line 6
        echo get_lang("Records");
        echo "</th>
            <th>";
        // line 7
        echo get_lang("Course");
        echo "</th>
            <th>";
        // line 8
        echo get_lang("Session");
        echo "</th>
            <th>";
        // line 9
        echo get_lang("Participants");
        echo "</th>
            <th>";
        // line 10
        echo get_lang("Actions");
        echo "</th>
        </tr>
    </thead>
        <tbody>
        ";
        // line 14
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["meetings"]) ? $context["meetings"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["meeting"]) {
            // line 15
            echo "            <tr id=\"meeting-";
            echo $this->getAttribute($context["meeting"], "id", array());
            echo "\">
                ";
            // line 16
            if (($this->getAttribute($context["meeting"], "visibility", array()) == 0)) {
                // line 17
                echo "                    <td class=\"muted\">";
                echo $this->getAttribute($context["meeting"], "created_at", array());
                echo "</td>
                ";
            } else {
                // line 19
                echo "                    <td>";
                echo $this->getAttribute($context["meeting"], "created_at", array());
                echo "</td>
                ";
            }
            // line 21
            echo "                <td>
                    ";
            // line 22
            if (($this->getAttribute($context["meeting"], "status", array()) == 1)) {
                // line 23
                echo "                        <span class=\"label label-success\">";
                echo get_lang("MeetingOpened");
                echo "</span>
                    ";
            } else {
                // line 25
                echo "                        <span class=\"label label-info\">";
                echo get_lang("MeetingClosed");
                echo "</span>
                    ";
            }
            // line 27
            echo "                </td>
                <td>
                    ";
            // line 29
            if (($this->getAttribute($context["meeting"], "record", array()) == 1)) {
                // line 30
                echo "                        ";
                // line 31
                echo "                        ";
                echo $this->getAttribute($context["meeting"], "show_links", array());
                echo "
                    ";
            }
            // line 33
            echo "                </td>
                <td>";
            // line 34
            echo (($this->getAttribute($context["meeting"], "course", array())) ? ($this->getAttribute($context["meeting"], "course", array())) : ("-"));
            echo "</td>
                <td>";
            // line 35
            echo (($this->getAttribute($context["meeting"], "session", array())) ? ($this->getAttribute($context["meeting"], "session", array())) : ("-"));
            echo "</td>
                <td>
                    ";
            // line 37
            echo (($this->getAttribute($context["meeting"], "participants", array())) ? (twig_join_filter($this->getAttribute($context["meeting"], "participants", array()), "<br>")) : ("-"));
            echo "
                </td>
                <td>
                    ";
            // line 40
            echo $this->getAttribute($context["meeting"], "action_links", array());
            echo "
                </td>
            </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['meeting'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 44
        echo "    </tbody>
</table>
";
    }

    public function getTemplateName()
    {
        return "bbb/admin.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  137 => 44,  127 => 40,  121 => 37,  116 => 35,  112 => 34,  109 => 33,  103 => 31,  101 => 30,  99 => 29,  95 => 27,  89 => 25,  83 => 23,  81 => 22,  78 => 21,  72 => 19,  66 => 17,  64 => 16,  59 => 15,  55 => 14,  48 => 10,  44 => 9,  40 => 8,  36 => 7,  32 => 6,  28 => 5,  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "bbb/admin.tpl", "C:\\xampp\\htdocs\\chamilo\\plugin\\bbb\\admin.tpl");
    }
}
