<?php

/* default/mail/header.tpl */
class __TwigTemplate_995f5aca5b2d1c61b02b0d50b7628c129c80ddb58d6e0935bf400e12a3e00fb1 extends Twig_Template
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
        echo "<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">
    <tr>
        <td width=\"245\">
            ";
        // line 4
        echo return_logo((isset($context["css_styles"]) ? $context["css_styles"] : null));
        echo "
        </td>
        <td width=\"100%\">
            &nbsp;
        </td>
    </tr>
</table>
";
    }

    public function getTemplateName()
    {
        return "default/mail/header.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  24 => 4,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/mail/header.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\mail\\header.tpl");
    }
}
