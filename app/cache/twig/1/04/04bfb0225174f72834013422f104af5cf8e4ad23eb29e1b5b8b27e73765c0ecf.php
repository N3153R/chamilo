<?php

/* default/layout/show_footer.tpl */
class __TwigTemplate_fe378459f8cfd28639cddbde25af53fc7b65f86e1a43b1341955ca526438a7a2 extends Twig_Template
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
        if (((isset($context["show_footer"]) ? $context["show_footer"] : null) == true)) {
            // line 2
            echo "    </div>
    </section>
    ";
            // line 4
            $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/layout/page_footer.tpl"), "default/layout/show_footer.tpl", 4)->display($context);
        } else {
            // line 6
            echo "    ";
            $this->loadTemplate(((isset($context["template"]) ? $context["template"] : null) . "/layout/footer.js.tpl"), "default/layout/show_footer.tpl", 6)->display($context);
        }
        // line 8
        echo "    </div>
</body>
</html>";
    }

    public function getTemplateName()
    {
        return "default/layout/show_footer.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  32 => 8,  28 => 6,  25 => 4,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/layout/show_footer.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\layout\\show_footer.tpl");
    }
}
