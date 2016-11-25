<?php

/* default/exercise/submit.js.tpl */
class __TwigTemplate_b515a8c3f93a8474929af391cb91b93d2cdde599bf2f1b1d9d5ad36d501059b8 extends Twig_Template
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
        echo "<script>

var DraggableAnswer = {
    gallery: null,
    trash: null,
    deleteItem: function (item, insertHere) {
        if (insertHere.find(\".exercise-draggable-answer-option\").length > 0) {
            return false;
        }

        item.fadeOut(function () {
            var \$list = \$('<ul>').addClass('gallery ui-helper-reset').appendTo(insertHere);

            item.find('a.btn').remove();

            var droppedId = item.attr('id'),
                dropedOnId = insertHere.attr('id'),
                originSelectId = 'window_' + droppedId + '_select',
                value = dropedOnId.split('_')[2];

            \$('#' + originSelectId + ' option')
                .filter(function (index) {
                    return index === parseInt(value);
                })
                .attr(\"selected\", true);

            item.appendTo(\$list).fadeIn();
        });
    },
    recycleItem: function (item) {
        item.fadeOut(function () {
            item
                .find('a.btn')
                .remove()
                .end()
                .find(\"img\")
                .end()
                .appendTo(DraggableAnswer.gallery)
                .fadeIn();
        });

        var droppedId = item.attr('id'),
            originSelectId = 'window_' + droppedId + '_select';

        \$('#' + originSelectId + ' option:first').attr('selected', 'selected');
    },
    init: function (gallery, trash) {
        this.gallery = gallery;
        this.trash = trash;

        \$(\"li\", DraggableAnswer.gallery).draggable({
            cancel: \"a.ui-icon\",
            revert: \"invalid\",
            containment: \"document\",
            helper: \"clone\",
            cursor: \"move\"
        });

        DraggableAnswer.trash.droppable({
            accept: \".exercise-draggable-answer > li\",
            hoverClass: \"ui-state-active\",
            drop: function (e, ui) {
                DraggableAnswer.deleteItem(ui.draggable, \$(this));
            }
        });

        DraggableAnswer.gallery.droppable({
            drop: function (e, ui) {
                DraggableAnswer.recycleItem(ui.draggable, \$(this));
            }
        });
    }
};

var MatchingDraggable = {
    colorDestination: '#316B31',
    curviness: 0,
    connectorType: 'Straight',
    initialized: false,
    init: function (questionId) {
        var windowQuestionSelector = '.window' + questionId + '_question',
            countConnections = \$(windowQuestionSelector).length,
            colorArray = [],
            colorArrayDestination = [];

        if (countConnections > 0) {
            colorArray = \$.xcolor.analogous(\"#da0\", countConnections);
            colorArrayDestination = \$.xcolor.analogous(\"#51a351\", countConnections);
        } else {
            colorArray = \$.xcolor.analogous(\"#da0\", 10);
            colorArrayDestination = \$.xcolor.analogous(\"#51a351\", 10);
        }

        jsPlumb.importDefaults({
            DragOptions: {cursor: 'pointer', zIndex: 2000},
            PaintStyle: {strokeStyle: '#000'},
            EndpointStyle: {strokeStyle: '#316b31'},
            Endpoint: 'Rectangle',
            Anchors: ['TopCenter', 'TopCenter']
        });

        var exampleDropOptions = {
            tolerance: 'touch',
            hoverClass: 'dropHover',
            activeClass: 'dragActive'
        };

        var destinationEndPoint = {
            endpoint: [\"Dot\", {radius: 15}],
            paintStyle: {fillStyle: MatchingDraggable.colorDestination},
            isSource: false,
            connectorStyle: {strokeStyle: MatchingDraggable.colorDestination, lineWidth: 8},
            connector: [
                MatchingDraggable.connectorType,
                {curviness: MatchingDraggable.curviness}
            ],
            maxConnections: 1000,
            isTarget: true,
            dropOptions: exampleDropOptions,
            beforeDrop: function (params) {
                jsPlumb.select({source: params.sourceId}).each(function (connection) {
                    jsPlumb.detach(connection);
                });

                var selectId = params.sourceId + \"_select\";
                var value = params.targetId.split(\"_\")[2];

                \$(\"#\" + selectId + \" option\")
                    .removeAttr('selected')
                    .filter(function (index) {
                        return index === parseInt(value);
                    })
                    .attr(\"selected\", true);

                return true;
            }
        };

        var count = 0;
        var sourceDestinationArray = [];

        \$(windowQuestionSelector).each(function (index) {
            var windowId = \$(this).attr(\"id\");
            var scope = windowId + \"scope\";
            var destinationColor = colorArray[count].getHex();

            var sourceEndPoint = {
                endpoint: [
                    \"Dot\",
                    {radius: 15}
                ],
                paintStyle: {
                    fillStyle: destinationColor
                },
                isSource: true,
                connectorStyle: {
                    strokeStyle: \"#8a8888\",
                    lineWidth: 8
                },
                connector: [
                    MatchingDraggable.connectorType,
                    {curviness: MatchingDraggable.curviness}
                ],
                maxConnections: 1,
                isTarget: false,
                dropOptions: exampleDropOptions,
                scope: scope
            };

            sourceDestinationArray[count + 1] = sourceEndPoint;

            count++;

            jsPlumb.addEndpoint(
                windowId,
                {
                    anchor: ['RightMiddle', 'RightMiddle', 'RightMiddle', 'RightMiddle']
                },
                sourceEndPoint
            );

            var destinationCount = 0;

            \$(windowQuestionSelector).each(function (index) {
                var windowDestinationId = \$(this).attr(\"id\");
                destinationEndPoint.scope = scope;
                destinationEndPoint.paintStyle.fillStyle = colorArrayDestination[destinationCount].getHex();
                destinationCount++;

                jsPlumb.addEndpoint(
                    windowDestinationId + \"_answer\",
                    {
                        anchors: ['LeftMiddle', 'LeftMiddle', 'LeftMiddle', 'LeftMiddle']
                    },
                    destinationEndPoint
                );
            });
        });

        MatchingDraggable.attachBehaviour();
    },
    attachBehaviour: function () {
        if (!MatchingDraggable.initialized) {
            MatchingDraggable.initialized = true;
        }
    }
};

jsPlumb.ready(function () {
    if (\$(\".drag_question\").length > 0) {
        MatchingDraggable.init();

        \$(document).scroll(function () {
            jsPlumb.repaintEverything();
        });

        \$(window).resize(function () {
            jsPlumb.repaintEverything();
        });
    }
});

\$(document).on('ready', function () {
    DraggableAnswer.init(
        \$(\".exercise-draggable-answer\"),
        \$(\".droppable\")
    );

    // if shuffle answers
    if ('";
        // line 230
        echo (isset($context["shuffle_answers"]) ? $context["shuffle_answers"] : null);
        echo "' == '1') {
        \$('.exercise-draggable-answer').each(function(){
            // get current ul
            var \$ul = \$(this);
            // get array of list items in current ul
            var \$liArr = \$ul.children('li');
            // sort array of list items in current ul randomly
            \$liArr.sort(function(a,b){
                // Get a random number between 0 and 10
                var temp = parseInt( Math.random()*100 );
                // Get 1 or 0, whether temp is odd or even
                var isOddOrEven = temp%2;
                // Get +1 or -1, whether temp greater or smaller than 5
                var isPosOrNeg = temp>5 ? 1 : -1;
                // Return -1, 0, or +1
                return( isOddOrEven*isPosOrNeg );
            })
            // append list items to ul
            .appendTo(\$ul);
        });
    }
});
</script>
";
    }

    public function getTemplateName()
    {
        return "default/exercise/submit.js.tpl";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  250 => 230,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "default/exercise/submit.js.tpl", "C:\\xampp\\htdocs\\chamilo\\main\\template\\default\\exercise\\submit.js.tpl");
    }
}
