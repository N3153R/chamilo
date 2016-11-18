<?php

/* default/mail/footer.tpl */
class __TwigTemplate_bcca76dd94257f6395a5045cabd3c0867f7cb8cf4d089bd258bb5d329f8cdef9 extends Twig_Template
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
        <td style=\"background-color: #2C3E50; border-bottom: 1px solid #2C3E50; box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.1);\">
            &nbsp;
        </td>
    </tr>
</table>
";
    }

    public function getTemplateName()
    {
        return "default/mail/footer.tpl";
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/mail/footer.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\mail\\footer.tpl");
    }
}
