<?php

/* default/layout/no_layout.tpl */
class __TwigTemplate_08589638d14e0589ef820df92be26e00418098d3a517049337ec183fe8f1b885 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'body' => array($this, 'block_body'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<!--[if lt IE 7]> <html lang=\"";
        // line 2
        echo (isset($context["document_language"]) ? $context["document_language"] : null);
        echo "\" class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->
<!--[if IE 7]>    <html lang=\"";
        // line 3
        echo (isset($context["document_language"]) ? $context["document_language"] : null);
        echo "\" class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->
<!--[if IE 8]>    <html lang=\"";
        // line 4
        echo (isset($context["document_language"]) ? $context["document_language"] : null);
        echo "\" class=\"no-js lt-ie9\"> <![endif]-->
<!--[if gt IE 8]><!--><html lang=\"";
        // line 5
        echo (isset($context["document_language"]) ? $context["document_language"] : null);
        echo "\" class=\"no-js\"> <!--<![endif]-->
<head>
";
        // line 7
        $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/layout/head.tpl"), "default/layout/no_layout.tpl", 7)->display($context);
        // line 8
        echo "</head>
<body dir=\"";
        // line 9
        echo (isset($context["text_direction"]) ? $context["text_direction"] : null);
        echo "\" class=\"";
        echo (isset($context["section_name"]) ? $context["section_name"] : null);
        echo "\">
<section id=\"content-scorm\">
";
        // line 11
        $this->displayBlock('body', $context, $blocks);
        // line 14
        echo "</body>
</html>";
    }

    // line 11
    public function block_body($context, array $blocks = array())
    {
        // line 12
        echo "    ";
        echo (isset($context["content"]) ? $context["content"] : null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "default/layout/no_layout.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  62 => 12,  59 => 11,  54 => 14,  52 => 11,  45 => 9,  42 => 8,  40 => 7,  35 => 5,  31 => 4,  27 => 3,  23 => 2,  20 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/layout/no_layout.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\layout\\no_layout.tpl");
    }
}
