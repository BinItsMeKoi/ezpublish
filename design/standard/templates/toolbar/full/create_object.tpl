{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="toolbar-item {$placement}">
    {section show=or($show_subtree|count_chars()|eq(0), $requested_uri_string|begins_with( $show_subtree ))}
    {let parent_node=fetch( content, node, hash( node_id, $placement_node ) )}
    {section show=fetch( content, access, hash( access, 'create',
                                                contentobject, $parent_node,
                                                contentclass_id, $type_classidentifier ) )}

    <div class="toolbox">
        <div class="toolbox-design">
            <h2>{$title|wash}</h2>

            <div class="toolbox-content">
            <form method="post" action={"content/action/"|ezurl}>
                <input class="button new-object-{$type_classidentifier|wash}" type="submit" name="NewButton" value="{$title|wash}" />
                <input type="hidden" name="NodeID" value="{$placement_node|wash}" />
                <input type="hidden" name="ClassIdentifier" value="{$type_classidentifier|wash}" />
             </form>
             </div>

        </div>
    </div>

    {/section}
    {/let}
    {/section}
</div>
