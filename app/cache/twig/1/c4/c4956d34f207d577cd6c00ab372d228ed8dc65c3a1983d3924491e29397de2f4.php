<?php

/* default/export/table_pdf.tpl */
class __TwigTemplate_e30a0cefeee84dfaa879ff7a8331a311a25ea5f50cce672126b666e4b69321d3 extends Twig_Template
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
        echo (isset($context["organization"]) ? $context["organization"] : null);
        echo "

<h2 align=\"center\"> ";
        // line 3
        echo (isset($context["pdf_title"]) ? $context["pdf_title"] : null);
        echo " </h2>

";
        // line 5
        if ((isset($context["pdf_description"]) ? $context["pdf_description"] : null)) {
            // line 6
            echo "    ";
            echo (isset($context["pdf_description"]) ? $context["pdf_description"] : null);
            echo "
    <br /><br />
";
        }
        // line 9
        echo "
<table align=\"center\" width=\"100%\">
    ";
        // line 11
        if ((isset($context["pdf_student_info"]) ? $context["pdf_student_info"] : null)) {
            // line 12
            echo "    <tr>
        <td>
            <strong>";
            // line 14
            echo get_lang("Student");
            echo ":</strong>  ";
            echo $this->getAttribute((isset($context["pdf_student_info"]) ? $context["pdf_student_info"] : null), "complete_name", array());
            echo "
        </td>
    </tr>
    ";
        }
        // line 18
        echo "

    ";
        // line 20
        if ((isset($context["pdf_teachers"]) ? $context["pdf_teachers"] : null)) {
            // line 21
            echo "        <tr>
            <td>
                <strong>";
            // line 23
            echo get_lang("Teacher");
            echo ":</strong> ";
            echo (isset($context["pdf_teachers"]) ? $context["pdf_teachers"] : null);
            echo "
            </td>
        </tr>
    ";
        }
        // line 27
        echo "
    ";
        // line 28
        if ((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null)) {
            // line 29
            echo "        <tr>
            <td>
                <strong>";
            // line 31
            echo get_lang("Session");
            echo ":</strong> ";
            echo $this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "name", array());
            echo "
            </td>

            ";
            // line 34
            if ($this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "description", array())) {
                // line 35
                echo "            <td>
                <strong>";
                // line 36
                echo get_lang("Description");
                echo ":</strong> ";
                echo $this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "description", array());
                echo "
            </td>
            ";
            }
            // line 39
            echo "        </tr>

        ";
            // line 41
            if ((($this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "access_start_date", array()) != "") &&  !twig_test_empty($this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "access_end_date", array())))) {
                // line 42
                echo "        <tr>
            <td>
                <strong>";
                // line 44
                echo get_lang("PeriodToDisplay");
                echo ":</strong> ";
                echo sprintf(get_lang("FromDateXToDateY"), $this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "access_start_date", array()), $this->getAttribute((isset($context["pdf_session_info"]) ? $context["pdf_session_info"] : null), "access_end_date", array()));
                echo "
            </td>
        </tr>
        ";
            }
            // line 48
            echo "    ";
        }
        // line 49
        echo "
    ";
        // line 50
        if ((isset($context["pdf_course_info"]) ? $context["pdf_course_info"] : null)) {
            // line 51
            echo "    <tr>
        <td>
            <strong>";
            // line 53
            echo get_lang("Course");
            echo ":</strong> ";
            echo $this->getAttribute((isset($context["pdf_course_info"]) ? $context["pdf_course_info"] : null), "title", array());
            echo " (";
            echo $this->getAttribute((isset($context["pdf_course_info"]) ? $context["pdf_course_info"] : null), "code", array());
            echo ")

            ";
            // line 55
            if ((isset($context["pdf_course_category"]) ? $context["pdf_course_category"] : null)) {
                // line 56
                echo "            <strong>";
                echo get_lang("Category");
                echo ":</strong> ";
                echo (isset($context["pdf_course_category"]) ? $context["pdf_course_category"] : null);
                echo "
            ";
            }
            // line 58
            echo "
        </td>
    </tr>
    ";
        }
        // line 62
        echo "
    ";
        // line 63
        if ((isset($context["pdf_date"]) ? $context["pdf_date"] : null)) {
            // line 64
            echo "    <tr>
        <td>
            <strong>";
            // line 66
            echo get_lang("Date");
            echo ":</strong> ";
            echo (isset($context["pdf_date"]) ? $context["pdf_date"] : null);
            echo "
        </td>
    </tr>
    ";
        }
        // line 70
        echo "
</table>


";
        // line 74
        if (((isset($context["show_grade_generated_date"]) ? $context["show_grade_generated_date"] : null) == true)) {
            // line 75
            echo "<h5 align=\"right\">
    ";
            // line 76
            echo sprintf(get_lang("GradeGeneratedOnX"), twig_date_format_filter($this->env, "now", "d/m/Y"));
            echo "
</h5>
";
        }
        // line 79
        echo "
<br />

";
        // line 82
        echo (isset($context["pdf_content"]) ? $context["pdf_content"] : null);
        echo "

";
        // line 84
        if (((isset($context["add_signatures"]) ? $context["add_signatures"] : null) == true)) {
            // line 85
            echo "    <br />
    <br />

    <table style=\"text-align:center\" width=\"100%\">
        <tr>
            <td>
                _____________________________
                <br />
                ";
            // line 93
            echo get_lang("Drh");
            echo "
            </td>
            <td>
                _____________________________
                <br />
                ";
            // line 98
            echo get_lang("Teacher");
            echo "
            </td>
            <td>
                _____________________________
                <br />
                ";
            // line 103
            echo get_lang("Date");
            echo "
            </td>
        </tr>
    </table>
";
        }
    }

    public function getTemplateName()
    {
        return "default/export/table_pdf.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  235 => 103,  227 => 98,  219 => 93,  209 => 85,  207 => 84,  202 => 82,  197 => 79,  191 => 76,  188 => 75,  186 => 74,  180 => 70,  171 => 66,  167 => 64,  165 => 63,  162 => 62,  156 => 58,  148 => 56,  146 => 55,  137 => 53,  133 => 51,  131 => 50,  128 => 49,  125 => 48,  116 => 44,  112 => 42,  110 => 41,  106 => 39,  98 => 36,  95 => 35,  93 => 34,  85 => 31,  81 => 29,  79 => 28,  76 => 27,  67 => 23,  63 => 21,  61 => 20,  57 => 18,  48 => 14,  44 => 12,  42 => 11,  38 => 9,  31 => 6,  29 => 5,  24 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/export/table_pdf.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\export\\table_pdf.tpl");
    }
}
