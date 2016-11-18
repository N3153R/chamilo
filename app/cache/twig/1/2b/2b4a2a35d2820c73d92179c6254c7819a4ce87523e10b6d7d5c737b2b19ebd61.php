<?php

/* default/mail/subject_registration_platform.tpl */
class __TwigTemplate_db9c2eb1b1a364eb99325515b3e381933c8071c533df91766967cfacdb49e4dd extends Twig_Template
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
        echo ((((("[" . $this->getAttribute((isset($context["_s"]) ? $context["_s"] : null), "site_name", array())) . "] ") . get_lang("YourReg")) . " ") . $this->getAttribute((isset($context["_s"]) ? $context["_s"] : null), "site_name", array()));
        echo "
";
    }

    public function getTemplateName()
    {
        return "default/mail/subject_registration_platform.tpl";
    }

    public function isTraitable()
    {
        return false;
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
        return new Twig_Source("", "default/mail/subject_registration_platform.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\mail\\subject_registration_platform.tpl");
    }
}
