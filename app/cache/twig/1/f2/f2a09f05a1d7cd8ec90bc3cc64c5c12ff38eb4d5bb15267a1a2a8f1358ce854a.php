<?php

/* default/javascript/editor/ckeditor/elfinder.tpl */
class __TwigTemplate_d2d588db2210a975085ff9195abb37c5ebb5b906b499d6f1c5daf4494979e282 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/layout/no_layout.tpl"), "default/javascript/editor/ckeditor/elfinder.tpl", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_body($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/javascript/editor/elfinder_standalone.tpl"), "default/javascript/editor/ckeditor/elfinder.tpl", 4)->display($context);
    }

    public function getTemplateName()
    {
        return "default/javascript/editor/ckeditor/elfinder.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  30 => 4,  27 => 3,  18 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/javascript/editor/ckeditor/elfinder.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\javascript\\editor\\ckeditor\\elfinder.tpl");
    }
}
