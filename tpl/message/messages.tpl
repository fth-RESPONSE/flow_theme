[{foreach from=$messages item=message}]
    [{assign var="levelTemplate" value="message/$level.tpl"}]
    [{include file=$levelTemplate statusMessage=$message}]
[{/foreach}]
