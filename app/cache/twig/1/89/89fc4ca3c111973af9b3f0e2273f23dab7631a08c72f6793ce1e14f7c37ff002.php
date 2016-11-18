<?php

/* default/layout/hot_course_item.tpl */
class __TwigTemplate_43bd1d6f9efa3863817bc2cd543d2c20ba87728e22bae7a8ca197c31cff584f8 extends Twig_Template
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
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["hot_courses"]) ? $context["hot_courses"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 2
            echo "    ";
            if ($this->getAttribute($context["item"], "title", array())) {
                // line 3
                echo "        <div class=\"col-xs-12 col-sm-6 col-md-4\">
            <div class=\"items items-hotcourse\">
                <div class=\"image\">
                    <img src=\"";
                // line 6
                echo $this->getAttribute($context["item"], "course_image_large", array());
                echo "\" class=\"img-responsive\" alt=\"";
                echo $this->getAttribute($context["item"], "title", array());
                echo "\">
                    ";
                // line 7
                if (($this->getAttribute($context["item"], "categoryName", array()) != "")) {
                    // line 8
                    echo "                        <span class=\"category\">";
                    echo $this->getAttribute($context["item"], "categoryName", array());
                    echo "</span>
                        <div class=\"cribbon\"></div>
                    ";
                }
                // line 11
                echo "                    <div class=\"black-shadow\">
                        <div class=\"author-card\">
                        ";
                // line 13
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["item"], "teachers", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["teacher"]) {
                    // line 14
                    echo "                            ";
                    $context["counter"] = ((isset($context["counter"]) ? $context["counter"] : null) + 1);
                    // line 15
                    echo "                            ";
                    if (((isset($context["counter"]) ? $context["counter"] : null) <= 3)) {
                        // line 16
                        echo "                                <a href=\"";
                        echo $this->getAttribute($context["teacher"], "url", array());
                        echo "\" class=\"ajax\" data-title=\"";
                        echo $this->getAttribute($context["teacher"], "firstname", array());
                        echo " ";
                        echo $this->getAttribute($context["teacher"], "lastname", array());
                        echo "\">
                                    <img src=\"";
                        // line 17
                        echo $this->getAttribute($context["teacher"], "avatar", array());
                        echo "\" alt=\"";
                        echo $this->getAttribute($context["teacher"], "firstname", array());
                        echo " ";
                        echo $this->getAttribute($context["teacher"], "lastname", array());
                        echo "\"/>
                                </a>
                                <div class=\"teachers-details\">
                                     <h5>
                                        <a href=\"";
                        // line 21
                        echo $this->getAttribute($context["teacher"], "url", array());
                        echo "\" class=\"ajax\" data-title=\"";
                        echo $this->getAttribute($context["teacher"], "firstname", array());
                        echo " ";
                        echo $this->getAttribute($context["teacher"], "lastname", array());
                        echo "\">
                                            ";
                        // line 22
                        echo $this->getAttribute($context["teacher"], "firstname", array());
                        echo " ";
                        echo $this->getAttribute($context["teacher"], "lastname", array());
                        echo "
                                        </a>
                                     </h5>
                                </div>
                            ";
                    }
                    // line 27
                    echo "                        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['teacher'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 28
                echo "                        </div>
                    </div>
                    <div class=\"user-actions\">";
                // line 30
                echo $this->getAttribute($context["item"], "description_button", array());
                echo "</div>
                </div>
                <div class=\"description\">
                    <h4 class=\"title\">
                        <a title=\"";
                // line 34
                echo $this->getAttribute($context["item"], "title", array());
                echo "\" href=\"";
                echo $this->getAttribute($context["item"], "course_public_url", array());
                echo "\">";
                echo $this->getAttribute($context["item"], "title", array());
                echo "</a>
                    </h4>
                    <div class=\"ranking\">
                        ";
                // line 37
                echo $this->getAttribute($context["item"], "rating_html", array());
                echo "
                    </div>
                    <div class=\"toolbar\">
                        <div class=\"left\">
                            ";
                // line 41
                if ($this->getAttribute($context["item"], "price", array())) {
                    // line 42
                    echo "                                ";
                    echo $this->getAttribute($context["item"], "price", array());
                    echo "
                            ";
                }
                // line 44
                echo "                        </div>
                        <div class=\"right\">
                            <div class=\"btn-group\" role=\"group\">
                                ";
                // line 47
                echo $this->getAttribute($context["item"], "register_button", array());
                echo "
                                ";
                // line 48
                echo $this->getAttribute($context["item"], "unsubscribe_button", array());
                echo "
                                ";
                // line 49
                echo $this->getAttribute($context["item"], "already_register_as", array());
                echo "
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    ";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "default/layout/hot_course_item.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  153 => 49,  149 => 48,  145 => 47,  140 => 44,  134 => 42,  132 => 41,  125 => 37,  115 => 34,  108 => 30,  104 => 28,  98 => 27,  88 => 22,  80 => 21,  69 => 17,  60 => 16,  57 => 15,  54 => 14,  50 => 13,  46 => 11,  39 => 8,  37 => 7,  31 => 6,  26 => 3,  23 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/layout/hot_course_item.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\layout\\hot_course_item.tpl");
    }
}
