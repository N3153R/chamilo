<?php

/* default/javascript/editor/ckeditor/templates.tpl */
class __TwigTemplate_535e81d01135b919936a16a1600a6108e06b8c844312144c3cdcbefa4ab940ae extends Twig_Template
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
        echo "CKEDITOR.addTemplates(\"default\",
{
    imagesPath: ' ',
    templates:
        ";
        // line 5
        echo (isset($context["templates"]) ? $context["templates"] : null);
        echo "
});";
    }

    public function getTemplateName()
    {
        return "default/javascript/editor/ckeditor/templates.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  25 => 5,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/javascript/editor/ckeditor/templates.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\javascript\\editor\\ckeditor\\templates.tpl");
    }
}
