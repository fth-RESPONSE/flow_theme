# Change Log for OXID eSales Flow Theme

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [3.0.0] - Unreleased

### Added
- Template:
    - `page/account/delete_my_account_confirmation.tpl`
    - `page/account/articlereviews.tpl` 
    - `page/account/delete_article_review_confirmation.tpl`
    - `form/fieldset/delete_shipping_address_modal.tpl`
      
- Block:
    - `account_order_history_cart_items` in page/account/order.tpl
    - `account_dashboard_delete_my_account` in page/account/dashboard.tpl
    - `account_delete_my_account_confirmation` in page/account/delete_my_account_confirmation.tpl
    - `account_delete_my_account_confirmation_header_message` in page/account/delete_my_account_confirmation.tpl
    - `account_delete_my_account_confirmation_warning_message` in page/account/delete_my_account_confirmation.tpl
    - `account_delete_my_account_confirmation_form` in page/account/delete_my_account_confirmation.tpl
    - `account_delete_my_account_confirmation_form_button_set` in page/account/delete_my_account_confirmation.tpl
    - `account_reviewlist_header` in page/account/articlereviews.tpl
    - `account_reviewlist_locator` in page/account/articlereviews.tpl
    - `account_reviewlist_list` in page/account/articlereviews.tpl
    - `account_reviewlist_item` in page/account/articlereviews.tpl
    - `account_reviewlist_item_action` in page/account/articlereviews.tpl
    - `account_reviewlist_no_reviews_available` in page/account/articlereviews.tpl    
    - `delete_article_review_confirmation_modal` in page/account/delete_article_review_confirmation.tpl
    - `delete_article_review_confirmation_modal_header` in page/account/delete_article_review_confirmation.tpl
    - `delete_article_review_confirmation_modal_body` in page/account/delete_article_review_confirmation.tpl
    - `delete_article_review_confirmation_modal_form` in page/account/delete_article_review_confirmation.tpl
    - `delete_article_review_confirmation_modal_buttons_set` in page/account/delete_article_review_confirmation.tpl
    
- Multilang string: 
    - `DD_DELETE_PRODUCT_REVIEW_AND_RATING`
    - `DD_DELETE_PRODUCT_REVIEW_CONFIRMATION_QUESTION`
    - `DD_PROCUCT_REVIEWS_NOT_AVAILABLE`
    - `DELETE`   
    - `DELETE_SHIPPING_ADDRESS`    
    
- Feature: a user has the possibility to delete a shipping address
- Feature: a user has the posibility to delete own reviews and ratings, if this option is enabled in the shop

### Changed

### Deprecated

### Removed

### Fixed
- Cover unit price with rights to see check [0006687](https://bugs.oxid-esales.com/view.php?id=6687)
- Fix zoom picture if allow_url_fopen disabled [PR-111](https://github.com/OXID-eSales/flow_theme/pull/111)
- Email Templates contains some untranslated Idents [0006437](https://bugs.oxid-esales.com/view.php?id=6437)
- Updated deprecated price functions in basketcontents [PR-89](https://github.com/OXID-eSales/flow_theme/pull/89)

### Security

## [2.3.3] - 30-11-2017

### Fixed
- [Guestbook option remains in footer settings of the Flow theme](https://bugs.oxid-esales.com/view.php?id=6696)

[3.0.0]: https://github.com/OXID-eSales/flow_theme/compare/v3.0.0...HEAD
[2.3.3]: https://github.com/OXID-eSales/flow_theme/compare/v2.3.2...v2.3.3
