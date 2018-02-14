[{capture append="oxidBlock_content"}]

    [{oxscript include="js/widgets/oxlistremovebutton.min.js" priority=10}]
    [{oxscript add="$('button.removeButton').oxListRemoveButton();"}]


    [{block name="account_reviewlist_header"}]
    [{assign var="template_title" value="MY_PRODUCT_REVIEWS"|oxmultilangassign}]
    <h1 class="page-header">[{oxmultilang ident="MY_PRODUCT_REVIEWS"}]</h1>
    [{/block}]

    [{block name="account_reviewlist_locator"}]
    [{include file="widget/locator/listlocator.tpl" locator=$oView->getPageNavigation() place="top"}]
    [{/block}]

    [{block name="account_reviewlist_list"}]
    <div id="review">
        [{if $oView->getProductReviewItemsCnt() }]
        <div class="spacer"></div>
        <div class="reviews-landscape">
            [{foreach from=$oView->getProductReviewList() key=reviewId item=review name=ReviewsCounter}]
            [{block name="account_reviewlist_item"}]
            <div class="panel panel-default" id="reviewName_[{$smarty.foreach.ReviewsCounter.iteration}]" itemprop="review" itemscope itemtype="http://schema.org/Review">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-md-3 date">
                            <span>
                                <time itemprop="datePublished" datetime="[{$review->oxreviews__oxcreate->value|date_format:"%Y-%m-%d"}]">[{$review->oxreviews__oxcreate->value|date_format:"%d.%m.%Y"}]</time>
                            </span>
                        </div>
                        <div class="col-md-5 articleTitle">
                            [{assign var="article" value=$review->getArticle()}]
                            <span itemprop="itemreviewed">[{$article->oxarticles__oxtitle->value|truncate:60}]</span>
                        </div>
                        <div class="col-md-3 rating text-right">
                            [{if $review->oxreviews__oxrating->value}]
                            <div text-warning" itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating">
                                [{section name="starRatings" start=0 loop=5}]
                                [{if $review->oxreviews__oxrating->value >= $smarty.section.starRatings.iteration}]
                                <i class="fa fa-star"></i>
                                [{else}]
                                <i class="fa fa-star-o"></i>
                                [{/if}]
                                [{/section}]
                            </div>
                            [{/if}]
                        </div>
                        [{block name="account_reviewlist_item_action"}]
                        <div class="col-md-1 pull-right">
                            <div class="actions text-center">
                                <div class="btn-group">
                                    <button triggerForm="remove_product_review_[{$reviewId}]" type="submit" class="btn btn-danger btn-block hasTooltip removeButton" title="[{oxmultilang ident="DD_DELETE_PRODUCT_REVIEW_AND_RATING"}]" >
                                        <i class="fa fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        [{/block}]
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="panel-body" id="reviewText_[{$smarty.foreach.ReviewsCounter.iteration}]" itemprop="description">[{$review->oxreviews__oxtext->value}]</div>
                [{/block}]
                [{block name="account_reviewlist_item_form"}]
                <form action="[{$oViewConf->getSslSelfLink()}]"
                      method="post"
                      id="remove_product_review_[{$reviewId}]"
                      class="hidden">
                    <div>
                        [{$oViewConf->getNavFormParams()}]
                        [{$oViewConf->getHiddenSid()}]
                        <input name="pgNr" value="[{$oView->getActPage()}]"  type="hidden">
                        <input name="cl" value="account_reviewlist" type="hidden">
                        <input name="fnc" value="deleteProductReviewAndRating" type="hidden">
                        <input name="reviewId" value="[{$reviewId}]" type="hidden">
                        <input name="aId" value="[{$review->oxreviews__oxobjectid}]" type="hidden">
                    </div>
                </form>
                [{/block}]
            </div>
            [{/foreach}]
        </div>
        [{else}]
        [{block name="account_reviewlist_no_reviews_available"}]
        <div class="alert alert-info">
            [{oxmultilang ident="DD_PROCUCT_REVIEWS_NOT_AVAILABLE"}]
        </div>
        [{/block}]
        [{/if}]
    </div>
    [{/block}]

    [{insert name="oxid_tracker" title=$template_title}]

[{/capture}]
[{capture append="oxidBlock_sidebar"}]
    [{include file="page/account/inc/account_menu.tpl" active_link="reviewlist"}]
[{/capture}]
[{include file="layout/page.tpl" sidebar="Left"}]
