<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "demo";
String userid = "root";
String password = "abc123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html><html lang="en-US" class=""><head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register</title>
    <meta name="description" content="Use our form to contact us">
    <meta name="keywords" content="">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us" hreflang="en-us">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/fr/nous-contacter" hreflang="fr-fr">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/de/kontakt" hreflang="de-de">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/it/contattaci" hreflang="it-it">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/es/contactenos" hreflang="es-es">
    <link rel="alternate" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/ar/اتصل بنا" hreflang="ar-sa">
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name" : "Leo Postero Elementor",
        "url" : "https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/"
             ,"logo": {
            "@type": "ImageObject",
            "url":"https://demo80leotheme.b-cdn.net/prestashop/leo_postero_elementor_demo/img/logo-1694594527.jpg"
          }
          }
    </script>
    <script type="application/ld+json">
      {
        "@context": "https://schema.org",
        "@type": "WebPage",
        "isPartOf": {
          "@type": "WebSite",
          "url":  "https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/",
          "name": "Leo Postero Elementor"
        },
        "name": "Contact us",
        "url":  "https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us"
      }
    </script>
    <script type="application/ld+json">
        {
          "@context": "https://schema.org",
          "@type": "BreadcrumbList",
          "itemListElement": [
                      {
                "@type": "ListItem",
                "position": 1,
                "name": "Home",
                "item": "https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/"
              },                  {
                "@type": "ListItem",
                "position": 2,
                "name": "Contact us",
                "item": "https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us"
              }              ]
        }
      </script>
    <meta property="og:title" content="Contact us">
    <meta property="og:description" content="Use our form to contact us">
    <meta property="og:url" content="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us">
    <meta property="og:site_name" content="Leo Postero Elementor">
    <meta property="og:type" content="website">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/vnd.microsoft.icon" href="favicon.ico">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="css/theme-9c16be14.css" type="text/css" media="all">
    <script type="29fc85658decb060ec326d70-text/javascript">
            var add_cart_error = "An error occurred while processing your request. Please try again";
            var ajaxsearch = "1";
            var buttoncompare_title_add = "Add to Compare";
            var buttoncompare_title_remove = "Remove from Compare";
            var buttonwishlist_title_add = "Add to Wishlist";
            var buttonwishlist_title_remove = "Remove from WishList";
            var cancel_rating_txt = "Cancel Rating";
            var comparator_max_item = 3;
            var compared_products = [];
            var disable_review_form_txt = "Not exists a criterion to review for this product or this language";
            var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":true},"is_rtl":false,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"version":"1.1.3","urls":{"assets":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/modules\/leoelements\/assets\/"},"settings":{"general":{"elementor_global_image_lightbox":"yes","elementor_enable_lightbox_in_editor":"yes"}}};
            var enable_dropdown_defaultcart = 1;
            var enable_flycart_effect = 1;
            var enable_notification = 0;
            var height_cart_item = "135";
            var homeSize = {"width":"390","height":"507"};
            var isLogged = false;
            var leo_push = 0;
            var leo_search_url = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoproductsearch\/productsearch";
            var leo_token = "f69de6fe40e934a77e3e8531d34af8b4";
            var leoproductsearch_static_token = "f69de6fe40e934a77e3e8531d34af8b4";
            var leoproductsearch_token = "ae07653853ba5bfbdb763b04e1e70efa";
            var lf_is_gen_rtl = false;
            var lps_show_product_img = "1";
            var lps_show_product_price = true;
            var lql_ajax_url = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoquicklogin\/leocustomer";
            var lql_is_gen_rtl = false;
            var lql_module_dir = "\/prestashop\/leo_postero_elementor_demo\/modules\/leoquicklogin\/";
            var lql_myaccount_url = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/my-account";
            var lql_redirect = "";
            var minChars = "3";
            var number_cartitem_display = 3;
            var numpro_display = "100";
            var opLeoElements = {"ajax":"\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoelements\/ajax?token=ae07653853ba5bfbdb763b04e1e70efa","contact":"\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoelements\/contact","subscription":"\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoelements\/subscription","cart":"\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leoelements\/cart","all_results_product":"View all product results","no_products":"No products found","languages":{"1":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us","2":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/fr\/nous-contacter","3":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/de\/kontakt","4":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/it\/contattaci","5":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/es\/contactenos","6":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/ar\/\u0627\u062a\u0635\u0644 \u0628\u0646\u0627","length":6},"currencies":{"2":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us?SubmitCurrency=1&id_currency=2","1":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us?SubmitCurrency=1&id_currency=1","length":2}};
            var opLeoElementsList = {"gridLeft":[{"name":"product_thumbnail"},{"name":"product_flags"},{"name":"functional_buttons","element":[{"name":"add_to_cart"},{"name":"compare"},{"name":"wishlist"},{"name":"quickview"}]}],"gridRight":[{"name":"code","code":"<div class=_APQUOT_wr-price-reviews_APQUOT_>"},{"name":"code","code":"{if isset($product.category_name) && isset($product.id_category_default)}_APENTER__APTAB_<div class=_APQUOT_category-default_APQUOT_>_APENTER__APTAB__APTAB_<a href=_APQUOT_{$link->getCategoryLink($product.id_category_default)|escape:_APAPOST_html_APAPOST_:_APAPOST_UTF-8_APAPOST_}_APQUOT_ title=_APQUOT_{$product.category_name}_APQUOT_>{$product.category_name}<\/a>_APENTER__APTAB_<\/div>_APENTER_{\/if}"},{"name":"reviews"},{"name":"code","code":"<\/div>"},{"name":"product_name"},{"name":"product_price_and_shipping"}],"listing_product_mode":"grid","listing_product_column_module":"3","listing_product_column":"3","listing_product_largedevice":"3","listing_product_tablet":"2","listing_product_extrasmalldevice":"2","listing_product_mobile":"1","top_total":"1","top_sortby":"1","top_grid":"1","pg_count":"1","pg_type":"1","plist_load_more_product_img":"0","plist_load_more_product_img_option":"1","plist_load_multi_product_img":"0","plist_load_cdown":"0","lmobile_swipe":"0","class":"leo-plist-style-2-1 product-list-default "};
            var prestashop = {"cart":{"products":[],"totals":{"total":{"type":"total","label":"Total","amount":0,"value":"$0.00"},"total_including_tax":{"type":"total","label":"Total (tax incl.)","amount":0,"value":"$0.00"},"total_excluding_tax":{"type":"total","label":"Total (tax excl.)","amount":0,"value":"$0.00"}},"subtotals":{"products":{"type":"products","label":"Subtotal","amount":0,"value":"$0.00"},"discounts":null,"shipping":{"type":"shipping","label":"Shipping","amount":0,"value":""},"tax":{"type":"tax","label":"Taxes","amount":0,"value":"$0.00"}},"products_count":0,"summary_string":"0 items","vouchers":{"allowed":0,"added":[]},"discounts":[],"minimalPurchase":0,"minimalPurchaseRequired":""},"currency":{"id":1,"name":"US Dollar","iso_code":"USD","iso_code_num":"840","sign":"$"},"customer":{"lastname":null,"firstname":null,"email":null,"birthday":null,"newsletter":null,"newsletter_date_add":null,"optin":null,"website":null,"company":null,"siret":null,"ape":null,"is_logged":false,"gender":{"type":null,"name":null},"addresses":[]},"country":{"id_zone":"2","id_currency":"0","call_prefix":"1","iso_code":"US","active":"1","contains_states":"1","need_identification_number":"0","need_zip_code":"1","zip_code_format":"NNNNN","display_tax_label":"0","name":"United States","id":21},"language":{"name":"English (English)","iso_code":"en","locale":"en-US","language_code":"en-us","active":"1","is_rtl":"0","date_format_lite":"m\/d\/Y","date_format_full":"m\/d\/Y H:i:s","id":1},"page":{"title":"","canonical":null,"meta":{"title":"Contact us","description":"Use our form to contact us","keywords":"","robots":"index"},"page_name":"contact","body_classes":{"lang-en":true,"lang-rtl":false,"country-US":true,"currency-USD":true,"layout-left-column":true,"page-contact":true,"tax-display-disabled":true,"page-customer-account":false},"admin_notifications":[],"password-policy":{"feedbacks":{"0":"Very weak","1":"Weak","2":"Average","3":"Strong","4":"Very strong","Straight rows of keys are easy to guess":"Straight rows of keys are easy to guess","Short keyboard patterns are easy to guess":"Short keyboard patterns are easy to guess","Use a longer keyboard pattern with more turns":"Use a longer keyboard pattern with more turns","Repeats like \"aaa\" are easy to guess":"Repeats like \"aaa\" are easy to guess","Repeats like \"abcabcabc\" are only slightly harder to guess than \"abc\"":"Repeats like \"abcabcabc\" are only slightly harder to guess than \"abc\"","Sequences like abc or 6543 are easy to guess":"Sequences like \"abc\" or \"6543\" are easy to guess.","Recent years are easy to guess":"Recent years are easy to guess","Dates are often easy to guess":"Dates are often easy to guess","This is a top-10 common password":"This is a top-10 common password","This is a top-100 common password":"This is a top-100 common password","This is a very common password":"This is a very common password","This is similar to a commonly used password":"This is similar to a commonly used password","A word by itself is easy to guess":"A word by itself is easy to guess","Names and surnames by themselves are easy to guess":"Names and surnames by themselves are easy to guess","Common names and surnames are easy to guess":"Common names and surnames are easy to guess","Use a few words, avoid common phrases":"Use a few words, avoid common phrases","No need for symbols, digits, or uppercase letters":"No need for symbols, digits, or uppercase letters","Avoid repeated words and characters":"Avoid repeated words and characters","Avoid sequences":"Avoid sequences","Avoid recent years":"Avoid recent years","Avoid years that are associated with you":"Avoid years that are associated with you","Avoid dates and years that are associated with you":"Avoid dates and years that are associated with you","Capitalization doesn't help very much":"Capitalization doesn't help very much","All-uppercase is almost as easy to guess as all-lowercase":"All-uppercase is almost as easy to guess as all-lowercase","Reversed words aren't much harder to guess":"Reversed words aren't much harder to guess","Predictable substitutions like '@' instead of 'a' don't help very much":"Predictable substitutions like \"@\" instead of \"a\" don't help very much.","Add another word or two. Uncommon words are better.":"Add another word or two. Uncommon words are better."}}},"shop":{"name":"Leo Postero Elementor","logo":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/logo-1694594527.jpg","stores_icon":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/logo_stores.png","favicon":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/favicon.ico"},"core_js_public_path":"\/prestashop\/leo_postero_elementor_demo\/themes\/","urls":{"base_url":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/","current_url":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us","shop_domain_url":"https:\/\/demo80.leotheme.com","img_ps_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/","img_cat_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/c\/","img_lang_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/l\/","img_prod_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/","img_manu_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/m\/","img_sup_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/su\/","img_ship_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/s\/","img_store_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/st\/","img_col_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/co\/","img_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/themes\/leo_postero\/assets\/img\/","css_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/themes\/leo_postero\/assets\/css\/","js_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/themes\/leo_postero\/assets\/js\/","pic_url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/upload\/","theme_assets":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/themes\/leo_postero\/assets\/","theme_dir":"https:\/\/demo80leotheme.b-cdn.net\/var\/www\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/themes\/leo_postero\/","pages":{"address":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/address","addresses":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/addresses","authentication":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/login","manufacturer":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/brands","cart":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/cart","category":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=category","cms":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=cms","contact":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us","discount":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/discount","guest_tracking":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/guest-tracking","history":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/order-history","identity":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/identity","index":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/","my_account":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/my-account","order_confirmation":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/order-confirmation","order_detail":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=order-detail","order_follow":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/order-follow","order":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/order","order_return":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=order-return","order_slip":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/credit-slip","pagenotfound":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/page-not-found","password":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/password-recovery","pdf_invoice":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=pdf-invoice","pdf_order_return":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=pdf-order-return","pdf_order_slip":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=pdf-order-slip","prices_drop":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/prices-drop","product":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/index.php?controller=product","registration":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/registration","search":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/search","sitemap":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/sitemap","stores":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/stores","supplier":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/suppliers","new_products":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/new-products","brands":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/brands","register":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/registration","order_login":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/order?login=1"},"alternative_langs":{"en-us":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us","fr-fr":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/fr\/nous-contacter","de-de":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/de\/kontakt","it-it":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/it\/contattaci","es-es":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/es\/contactenos","ar-sa":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/ar\/\u0627\u062a\u0635\u0644 \u0628\u0646\u0627"},"actions":{"logout":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/?mylogout="},"no_picture_image":{"bySize":{"cart_default":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-cart_default.jpg","width":90,"height":115},"small_default":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-small_default.jpg","width":240,"height":313},"medium_default":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-medium_default.jpg","width":330,"height":430},"home_default":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-home_default.jpg","width":390,"height":507},"large_default":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-large_default.jpg","width":760,"height":992}},"small":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-cart_default.jpg","width":90,"height":115},"medium":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-medium_default.jpg","width":330,"height":430},"large":{"url":"https:\/\/demo80leotheme.b-cdn.net\/prestashop\/leo_postero_elementor_demo\/img\/p\/en-default-large_default.jpg","width":760,"height":992},"legend":""}},"configuration":{"display_taxes_label":false,"display_prices_tax_incl":false,"is_catalog":false,"show_prices":true,"opt_in":{"partner":true},"quantity_discount":{"type":"discount","label":"Unit discount"},"voucher_enabled":0,"return_enabled":0},"field_required":[],"breadcrumb":{"links":[{"title":"Home","url":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/"},{"title":"Contact us","url":"https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/contact-us"}],"count":2},"link":{"protocol_link":"https:\/\/","protocol_content":"https:\/\/"},"time":1705896952,"static_token":"f69de6fe40e934a77e3e8531d34af8b4","token":"ae07653853ba5bfbdb763b04e1e70efa","debug":false};
            var prestashopFacebookAjaxController = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/ps_facebook\/Ajax";
            var productcompare_add = "The product has been added to list compare";
            var productcompare_add_error = "An error occurred while adding. Please try again";
            var productcompare_max_item = "You cannot add more than 3 product(s) to the product comparison";
            var productcompare_remove = "The product was successfully removed from list compare";
            var productcompare_remove_error = "An error occurred while removing. Please try again";
            var productcompare_url = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leofeature\/productscompare";
            var productcompare_viewlistcompare = "View list compare";
            var psemailsubscription_subscription = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/ps_emailsubscription\/subscription";
            var psr_icon_color = "#F19D76";
            var review_error = "An error occurred while processing your request. Please try again";
            var show_popup = 1;
            var text_no_product = "Don't have products";
            var text_results_count = "results";
            var type_dropdown_defaultcart = "dropdown";
            var type_flycart_effect = "fade";
            var url_leoproductattribute = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leofeature\/LeoProductAttribute";
            var use_leo_gallery = 1;
            var width_cart_item = "265";
            var wishlist_add = "The product was successfully added to your wishlist";
            var wishlist_cancel_txt = "Cancel";
            var wishlist_confirm_del_txt = "Delete selected item?";
            var wishlist_del_default_txt = "Cannot delete default wishlist";
            var wishlist_email_txt = "Email";
            var wishlist_loggin_required = "You must be logged in to manage your wishlist";
            var wishlist_ok_txt = "Ok";
            var wishlist_quantity_required = "You must enter a quantity";
            var wishlist_remove = "The product was successfully removed from your wishlist";
            var wishlist_reset_txt = "Reset";
            var wishlist_send_txt = "Send";
            var wishlist_send_wishlist_txt = "Send wishlist";
            var wishlist_url = "https:\/\/demo80.leotheme.com\/prestashop\/leo_postero_elementor_demo\/en\/module\/leofeature\/mywishlist";
            var wishlist_viewwishlist = "View your wishlist";
          </script>
    <script type="29fc85658decb060ec326d70-text/javascript">
        var choosefile_text = "Choose file";
        var turnoff_popup_text = "Do not show this popup again";
        
        var size_item_quickview = 113;
        var style_scroll_quickview = 'vertical';
        
        var size_item_page = 113;
        var style_scroll_page = 'horizontal';
        
        var size_item_quickview_attr = 113;	
        var style_scroll_quickview_attr = 'vertical';
        
        var size_item_popup = 113;
        var style_scroll_popup = 'vertical';
    </script>
    <script type="29fc85658decb060ec326d70-text/javascript">
        /**
         * List functions will run when document.ready()
         */
        var ap_list_functions = [];
        /**
         * List functions will run when window.load()
         */
        var ap_list_functions_loaded = [];
    
        /**
         * List functions will run when document.ready() for theme
         */
    
        var products_list_functions = [];
    </script>
    <style id="elementor-global">.elementor-widget-LeoBlockLink .linklist-menu li:not(:last-child):after{border-color:#7a7a7a;}.elementor-widget-heading.elementor-widget-heading .elementor-heading-title{color:#6ec1e4;}.elementor-widget-image .widget-image-caption{color:#7a7a7a;}.elementor-widget-text-editor{color:#7a7a7a;}.elementor-widget-text-editor a, .elementor-widget-text-editor p{color:inherit;}.elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap{background-color:#6ec1e4;}.elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap, .elementor-widget-text-editor.elementor-drop-cap-view-default .elementor-drop-cap{color:#6ec1e4;border-color:#6ec1e4;}.elementor-widget-button a.elementor-button, .elementor-widget-button .elementor-button{background-color:#61ce70;}.elementor-widget-divider .elementor-divider-separator{border-top-color:#7a7a7a;}.elementor-widget-image-box .elementor-image-box-content .elementor-image-box-title{color:#6ec1e4;}.elementor-widget-image-box .elementor-image-box-content .elementor-image-box-description{color:#7a7a7a;}.elementor-widget-icon.elementor-view-stacked .elementor-icon{background-color:#6ec1e4;}.elementor-widget-icon.elementor-view-framed .elementor-icon, .elementor-widget-icon.elementor-view-default .elementor-icon{color:#6ec1e4;border-color:#6ec1e4;}.elementor-widget-icon.elementor-view-framed .elementor-icon, .elementor-widget-icon.elementor-view-default .elementor-icon svg{fill:#6ec1e4;}.elementor-widget-icon-box.elementor-view-stacked .elementor-icon{background-color:#6ec1e4;}.elementor-widget-icon-box.elementor-view-framed .elementor-icon, .elementor-widget-icon-box.elementor-view-default .elementor-icon{fill:#6ec1e4;color:#6ec1e4;border-color:#6ec1e4;}.elementor-widget-icon-box .elementor-icon-box-content .elementor-icon-box-title{color:#6ec1e4;}.elementor-widget-icon-box .elementor-icon-box-content .elementor-icon-box-description{color:#7a7a7a;}.elementor-widget-star-rating .elementor-star-rating__title{color:#7a7a7a;}.elementor-widget-icon-list .elementor-icon-list-item:not(:last-child):after{border-color:#7a7a7a;}.elementor-widget-icon-list .elementor-icon-list-icon i{color:#6ec1e4;}.elementor-widget-icon-list .elementor-icon-list-icon svg{fill:#6ec1e4;}.elementor-widget-icon-list .elementor-icon-list-text{color:#54595f;}.elementor-widget-counter .elementor-counter-number-wrapper{color:#6ec1e4;}.elementor-widget-counter .elementor-counter-title{color:#54595f;}.elementor-widget-progress .elementor-progress-wrapper .elementor-progress-bar{background-color:#6ec1e4;}.elementor-widget-progress .elementor-title{color:#6ec1e4;}.elementor-widget-testimonial .elementor-testimonial-content{color:#7a7a7a;}.elementor-widget-testimonial .elementor-testimonial-name{color:#6ec1e4;}.elementor-widget-testimonial .elementor-testimonial-job{color:#54595f;}.elementor-widget-tabs .elementor-tab-title{color:#6ec1e4;}.elementor-widget-tabs .elementor-tab-title.elementor-active{color:#61ce70;}.elementor-widget-tabs .elementor-tab-content *{color:#7a7a7a;}.elementor-widget-accordion .elementor-accordion .elementor-tab-title{color:#6ec1e4;}.elementor-widget-accordion .elementor-accordion .elementor-tab-title.elementor-active{color:#61ce70;}.elementor-widget-accordion .elementor-accordion .elementor-tab-content{color:#7a7a7a;}.elementor-widget-toggle .elementor-toggle .elementor-tab-title{color:#6ec1e4;}.elementor-widget-toggle .elementor-toggle .elementor-tab-title.elementor-active{color:#61ce70;}.elementor-widget-toggle .elementor-toggle .elementor-tab-content{color:#7a7a7a;}</style><style id="elementor-post-1">.elementor-1 .elementor-element.elementor-element-51d2726:not(.elementor-motion-effects-element-type-background), .elementor-1 .elementor-element.elementor-element-51d2726 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:#4e423d;}.elementor-1 .elementor-element.elementor-element-51d2726{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;padding:11px 0px 11px 0px;}.elementor-1 .elementor-element.elementor-element-51d2726 > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-1 .elementor-element.elementor-element-30ff9b5 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-row .item-title{text-align:center;}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-row .item-sub-title{text-align:left;}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-row .item-description{text-align:center;font-size:13px;line-height:22px;}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-row .item-description, .elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-row .item-description *{color:#ffffff;}.elementor-1 .elementor-element.elementor-element-e441f08{padding:15px 0px 15px 0px;}.elementor-1 .elementor-element.elementor-element-eb31c49 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-1 .elementor-element.elementor-element-0726d34 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-1 .elementor-element.elementor-element-a31c5a9.elementor-column > .elementor-column-wrap > .elementor-widget-wrap{justify-content:flex-end;}.elementor-1 .elementor-element.elementor-element-a31c5a9.elementor-column > .elementor-column-wrap > .elementor-widget-wrap > .elementor-element{width:auto;}.elementor-1 .elementor-element.elementor-element-a31c5a9 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-1 .elementor-element.elementor-element-bf17b59{width:initial;}.elementor-1 .elementor-element.elementor-element-a2ef05f{width:initial;}.elementor-1 .elementor-element.elementor-element-0f8b12f{width:initial;}.elementor-1 .elementor-element.elementor-element-1f8374c{width:initial;}.elementor-1 .elementor-element.elementor-element-bf91b06{width:initial;}.elementor-1 .elementor-element.elementor-element-b3bd2a4:not(.elementor-motion-effects-element-type-background), .elementor-1 .elementor-element.elementor-element-b3bd2a4 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:#f5f3eb;}.elementor-1 .elementor-element.elementor-element-b3bd2a4{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;}.elementor-1 .elementor-element.elementor-element-b3bd2a4 > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-1 .elementor-element.elementor-element-33fa6f7 > .elementor-element-populated{padding:0px 15px 0px 15px;}@media(max-width:1024px){.elementor-1 .elementor-element.elementor-element-30ff9b5 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}}@media(max-width:767px){.elementor-1 .elementor-element.elementor-element-30ff9b5 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-1 .elementor-element.elementor-element-30ff9b5 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-1 .elementor-element.elementor-element-eb31c49.elementor-column > .elementor-column-wrap > .elementor-widget-wrap{justify-content:center;}.elementor-1 .elementor-element.elementor-element-eb31c49.elementor-column > .elementor-column-wrap > .elementor-widget-wrap > .elementor-element{width:auto;}}</style><style id="elementor-post-2">.elementor-2 .elementor-element.elementor-element-f48495e{margin-top:85px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-f50c33c > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-65bf2b9.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-65bf2b9 .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-5f8708b > .elementor-element-populated{padding:0px 15px 0px 15px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-4f4a6d4 a.elementor-button, .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;fill:#000000;color:#000000;background-color:rgba(0,0,0,0);border-radius:50px 50px 50px 50px;padding:15px 30px 13px 30px;}.elementor-2 .elementor-element.elementor-element-4f4a6d4 a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-4f4a6d4 a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-4f4a6d4 .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-90616d7 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-7ac350e.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-7ac350e.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-7ac350e.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-content{padding:0px 0px 5px 0px;}.elementor-2 .elementor-element.elementor-element-7ac350e > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-5db6a13 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-225a4a6.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-225a4a6.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-225a4a6.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-content{padding:0px 0px 5px 0px;}.elementor-2 .elementor-element.elementor-element-225a4a6 > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-f187ca7 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-3f4a19c.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-3f4a19c.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-3f4a19c.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-content{padding:0px 0px 5px 0px;}.elementor-2 .elementor-element.elementor-element-3f4a19c > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-002a3d7 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-e3780a1.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-e3780a1.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-e3780a1.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-content{padding:0px 0px 5px 0px;}.elementor-2 .elementor-element.elementor-element-e3780a1 > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-3560b39{margin-top:80px;margin-bottom:85px;}.elementor-2 .elementor-element.elementor-element-b9df18a > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-57a6e7b.elementor-position-right .elementor-image-box-img{margin-left:0px;}.elementor-2 .elementor-element.elementor-element-57a6e7b.elementor-position-left .elementor-image-box-img{margin-right:0px;}.elementor-2 .elementor-element.elementor-element-57a6e7b.elementor-position-top .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-wrapper{text-align:left;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content .elementor-image-box-title{color:#ffffff;font-size:48px;font-weight:600;line-height:54px;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content .elementor-image-box-description{color:#000000;font-size:11px;font-weight:700;text-transform:uppercase;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content{padding:131px 120px 131px 120px;position:absolute;top:0px;}body:not(.rtl) .elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content{left:0px;}body.rtl .elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content{right:0px;}.elementor-2 .elementor-element.elementor-element-8c098df > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-2 .elementor-element.elementor-element-8c098df{margin-top:0px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-53918e1 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-8b1813e.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-8b1813e .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-fe485e0 > .elementor-element-populated{padding:0px 15px 0px 15px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-9f818c7 a.elementor-button, .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;fill:#000000;color:#000000;background-color:rgba(0,0,0,0);border-radius:50px 50px 50px 50px;padding:15px 30px 13px 30px;}.elementor-2 .elementor-element.elementor-element-9f818c7 a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-9f818c7 a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-9f818c7 .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-866b823 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-bcacb3b.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-bcacb3b.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-bcacb3b.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-bcacb3b .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-bcacb3b .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-bcacb3b .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-bcacb3b .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-bcacb3b > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-c7bd7df > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-d230cb5.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-d230cb5.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-d230cb5.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-d230cb5 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-d230cb5 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-d230cb5 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-d230cb5 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-d230cb5 > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-1c739a1 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-cc9f820.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-cc9f820.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-cc9f820.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-cc9f820 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-cc9f820 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-cc9f820 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-cc9f820 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-cc9f820 > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-a78b06e > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-d7a8c17.elementor-position-right .elementor-image-box-img{margin-left:24px;}.elementor-2 .elementor-element.elementor-element-d7a8c17.elementor-position-left .elementor-image-box-img{margin-right:24px;}.elementor-2 .elementor-element.elementor-element-d7a8c17.elementor-position-top .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-d7a8c17 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-d7a8c17 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-d7a8c17 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:16px;font-weight:700;line-height:1.5em;}.elementor-2 .elementor-element.elementor-element-d7a8c17 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-d7a8c17 > .elementor-widget-container{padding:10px 10px 10px 10px;border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-0e47b07 > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-2 .elementor-element.elementor-element-0e47b07{margin-top:60px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-7549bc5 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-ae81cce.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-ae81cce .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-ac4324a > .elementor-element-populated{padding:0px 15px 0px 15px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-a122c09 a.elementor-button, .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;fill:#000000;color:#000000;background-color:rgba(0,0,0,0);border-radius:50px 50px 50px 50px;padding:15px 30px 13px 30px;}.elementor-2 .elementor-element.elementor-element-a122c09 a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-a122c09 a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-a122c09 .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-f9eeeff > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-4e3bd96 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/4);flex:0 0 calc(100%/4);max-width:calc(100%/4);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-09ce4a6{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;margin-top:60px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-09ce4a6 > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-2 .elementor-element.elementor-element-ab97985:not(.elementor-motion-effects-element-type-background) > .elementor-element-populated, .elementor-2 .elementor-element.elementor-element-ab97985 > .elementor-column-wrap > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-image:url("images/postero-bg-03.jpg");background-size:cover;}.elementor-2 .elementor-element.elementor-element-ab97985 > .elementor-element-populated{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;margin:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-ab97985 > .elementor-element-populated > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-2 .elementor-element.elementor-element-2f06e31 > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-2 .elementor-element.elementor-element-2f06e31{padding:68px 0px 56px 0px;}.elementor-2 .elementor-element.elementor-element-502ad9a > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-0613d2f.elementor-widget-heading .elementor-heading-title{color:#ffffff;}.elementor-2 .elementor-element.elementor-element-0613d2f .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:38px;font-weight:700;line-height:44px;letter-spacing:-1px;}.elementor-2 .elementor-element.elementor-element-0613d2f > .elementor-widget-container{margin:0px 0px 20px 76px;}.elementor-2 .elementor-element.elementor-element-2872bcf > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-4e02a8c{text-align:center;}.elementor-2 .elementor-element.elementor-element-4e02a8c.elementor-widget-heading .elementor-heading-title{color:#ffffff;}.elementor-2 .elementor-element.elementor-element-4e02a8c .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:48px;font-weight:700;line-height:54px;letter-spacing:-1px;}.elementor-2 .elementor-element.elementor-element-3ee8bab{text-align:center;}.elementor-2 .elementor-element.elementor-element-3ee8bab.elementor-widget-heading .elementor-heading-title{color:#ffffff;}.elementor-2 .elementor-element.elementor-element-3ee8bab .elementor-heading-title{font-size:18px;font-weight:700;text-transform:uppercase;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-3ee8bab > .elementor-widget-container{margin:0px 0px 25px 0px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-9c5d73d a.elementor-button, .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:24px;letter-spacing:2px;fill:#000000;color:#000000;background-color:#ffffff;border-radius:50px 50px 50px 50px;padding:15px 30px 15px 30px;}.elementor-2 .elementor-element.elementor-element-9c5d73d a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-9c5d73d a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-9c5d73d .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-b1ec5f9 > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-2 .elementor-element.elementor-element-b1ec5f9{margin-top:85px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-9067696 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-cfb5f31.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-cfb5f31 .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-14671e9 > .elementor-element-populated{padding:0px 15px 0px 15px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-30208a6 a.elementor-button, .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;fill:#000000;color:#000000;background-color:rgba(0,0,0,0);border-radius:50px 50px 50px 50px;padding:15px 30px 13px 30px;}.elementor-2 .elementor-element.elementor-element-30208a6 a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-30208a6 a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-30208a6 .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-061c073 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-9a38de0 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/4);flex:0 0 calc(100%/4);max-width:calc(100%/4);}.elementor-2 .elementor-element.elementor-element-9a38de0 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-9a38de0 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-32205a1 > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-2 .elementor-element.elementor-element-32205a1{margin-top:85px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-c946fc4 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-2ae69fa.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-2ae69fa .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-58eb4b7 > .elementor-element-populated{padding:0px 15px 0px 15px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button .elementor-align-icon-right{margin-left:5px;}body:not(.lang-rtl) .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button .elementor-align-icon-left{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button .elementor-align-icon-right{margin-right:5px;}body.lang-rtl .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button .elementor-align-icon-left{margin-left:5px;}.elementor-2 .elementor-element.elementor-element-8b5bf10 a.elementor-button, .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button{font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;fill:#000000;color:#000000;background-color:rgba(0,0,0,0);border-radius:50px 50px 50px 50px;padding:15px 30px 13px 30px;}.elementor-2 .elementor-element.elementor-element-8b5bf10 a.elementor-button:hover, .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button:hover, .elementor-2 .elementor-element.elementor-element-8b5bf10 a.elementor-button:focus, .elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button:focus{color:#ffffff;background-color:#ca9236;}.elementor-2 .elementor-element.elementor-element-8b5bf10 .elementor-button{border-style:solid;border-width:1px 1px 1px 1px;border-color:#dedace;}.elementor-2 .elementor-element.elementor-element-24968a6 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-b8b7c18 .elementor-image img{width:100%;max-width:100%;}.elementor-2 .elementor-element.elementor-element-b8b7c18 > .elementor-widget-container{margin:0px 0px 21px 0px;}.elementor-2 .elementor-element.elementor-element-5c4baa0 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-5c4baa0 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-5c4baa0 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:15px;font-weight:600;}.elementor-2 .elementor-element.elementor-element-5c4baa0 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-92e353d > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-7475d69 .elementor-image img{width:100%;max-width:100%;}.elementor-2 .elementor-element.elementor-element-7475d69 > .elementor-widget-container{margin:0px 0px 21px 0px;}.elementor-2 .elementor-element.elementor-element-e961ed0 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-e961ed0 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-e961ed0 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:15px;font-weight:600;}.elementor-2 .elementor-element.elementor-element-e961ed0 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-8772538 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-af9881b .elementor-image img{width:100%;max-width:100%;}.elementor-2 .elementor-element.elementor-element-af9881b > .elementor-widget-container{margin:0px 0px 21px 0px;}.elementor-2 .elementor-element.elementor-element-fd3d1ba .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-fd3d1ba .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-fd3d1ba .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:15px;font-weight:600;}.elementor-2 .elementor-element.elementor-element-fd3d1ba .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:11px;font-weight:600;text-transform:uppercase;line-height:14px;letter-spacing:2px;}.elementor-2 .elementor-element.elementor-element-8bf285e{margin-top:80px;margin-bottom:85px;}.elementor-2 .elementor-element.elementor-element-0129750 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-1404493.elementor-position-right .elementor-image-box-img{margin-left:0px;}.elementor-2 .elementor-element.elementor-element-1404493.elementor-position-left .elementor-image-box-img{margin-right:0px;}.elementor-2 .elementor-element.elementor-element-1404493.elementor-position-top .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-wrapper{text-align:left;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content .elementor-image-box-title{color:#ffffff;font-size:48px;font-weight:600;line-height:54px;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content .elementor-image-box-description{color:#000000;font-size:11px;font-weight:700;text-transform:uppercase;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content{padding:131px 120px 131px 120px;position:absolute;top:0px;}body:not(.rtl) .elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content{left:0px;}body.rtl .elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content{right:0px;}.elementor-2 .elementor-element.elementor-element-4c3235e{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-e6416a3 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-e5ce6a3{text-align:center;}.elementor-2 .elementor-element.elementor-element-e5ce6a3.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-e5ce6a3 .elementor-heading-title{font-family:"Gilland", Sans-serif;font-size:26px;font-weight:700;line-height:34px;}.elementor-2 .elementor-element.elementor-element-e5ce6a3 > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-565bc9e .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/6);flex:0 0 calc(100%/6);max-width:calc(100%/6);}.elementor-2 .elementor-element.elementor-element-565bc9e .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-565bc9e .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-9d8b23b{margin-top:80px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-0978561 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-3640cb1.elementor-position-right .elementor-image-box-img{margin-left:0px;}.elementor-2 .elementor-element.elementor-element-3640cb1.elementor-position-left .elementor-image-box-img{margin-right:0px;}.elementor-2 .elementor-element.elementor-element-3640cb1.elementor-position-top .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-wrapper .elementor-image-box-img{width:100%;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-wrapper{text-align:left;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content .elementor-image-box-title{color:#4e423d;font-size:38px;font-weight:600;line-height:34px;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content .elementor-image-box-description{color:#555555;font-size:11px;font-weight:700;text-transform:uppercase;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content{padding:81px 85px 81px 85px;position:absolute;top:0px;}body:not(.rtl) .elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content{left:0px;}body.rtl .elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content{right:0px;}.elementor-2 .elementor-element.elementor-element-4f3f6be > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-d853d25 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 .title_block{text-align:left;font-family:"Gilland", Sans-serif;font-size:38px;font-weight:500;text-transform:capitalize;line-height:44px;letter-spacing:-1px;padding:0px 0px 10px 0px;}.elementor-2 .elementor-element.elementor-element-d853d25 .title_block, .elementor-2 .elementor-element.elementor-element-d853d25 .title_block *{color:#4e423d;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-title{text-align:left;font-size:15px;font-weight:600;line-height:22px;padding:0px 0px 0px 100px;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-title, .elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-title *{color:#000000;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-sub-title{text-align:left;font-size:12px;line-height:1.8em;padding:0px 0px 0px 100px;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-sub-title, .elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-sub-title *{color:#999999;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-description{text-align:left;font-size:18px;line-height:30px;padding:0px 0px 15px 0px;}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-description, .elementor-2 .elementor-element.elementor-element-d853d25 .slick-row .item-description *{color:#444444;}.elementor-2 .elementor-element.elementor-element-d853d25 > .elementor-widget-container{padding:80px 90px 60px 90px;}.elementor-2 .elementor-element.elementor-element-da24794{margin-top:80px;margin-bottom:80px;}.elementor-2 .elementor-element.elementor-element-a7113b4.elementor-column > .elementor-column-wrap > .elementor-widget-wrap{justify-content:center;}.elementor-2 .elementor-element.elementor-element-a7113b4.elementor-column > .elementor-column-wrap > .elementor-widget-wrap > .elementor-element{width:auto;}.elementor-2 .elementor-element.elementor-element-a7113b4 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-eb8c482 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-7baa0b9 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/5);flex:0 0 calc(100%/5);max-width:calc(100%/5);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .leo-instagram-size{padding-left:calc(30px/2);padding-right:calc(30px/2);padding-top:calc(25px/2);padding-bottom:calc(25px/2);}.elementor-2 .elementor-element.elementor-element-ca6ae37{margin-top:80px;margin-bottom:80px;}.elementor-2 .elementor-element.elementor-element-347a89c > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-0b07edf.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-2 .elementor-element.elementor-element-0b07edf.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-2 .elementor-element.elementor-element-0b07edf.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-0b07edf .elementor-image-box-wrapper .elementor-image-box-img{width:20%;}.elementor-2 .elementor-element.elementor-element-0b07edf .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-0b07edf .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:18px;line-height:30px;}.elementor-2 .elementor-element.elementor-element-0b07edf .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-2 .elementor-element.elementor-element-07b832b > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-dd23e6c.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-2 .elementor-element.elementor-element-dd23e6c.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-2 .elementor-element.elementor-element-dd23e6c.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-dd23e6c .elementor-image-box-wrapper .elementor-image-box-img{width:20%;}.elementor-2 .elementor-element.elementor-element-dd23e6c .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-dd23e6c .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:18px;line-height:30px;}.elementor-2 .elementor-element.elementor-element-dd23e6c .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-2 .elementor-element.elementor-element-f7f6463 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-e5f10cc.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-2 .elementor-element.elementor-element-e5f10cc.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-2 .elementor-element.elementor-element-e5f10cc.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-e5f10cc .elementor-image-box-wrapper .elementor-image-box-img{width:20%;}.elementor-2 .elementor-element.elementor-element-e5f10cc .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-e5f10cc .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:18px;line-height:30px;}.elementor-2 .elementor-element.elementor-element-e5f10cc .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-2 .elementor-element.elementor-element-d3f8db7 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-2 .elementor-element.elementor-element-9f70905.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-2 .elementor-element.elementor-element-9f70905.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-2 .elementor-element.elementor-element-9f70905.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-9f70905 .elementor-image-box-wrapper .elementor-image-box-img{width:20%;}.elementor-2 .elementor-element.elementor-element-9f70905 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-2 .elementor-element.elementor-element-9f70905 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:18px;line-height:30px;}.elementor-2 .elementor-element.elementor-element-9f70905 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}@media(min-width:768px){.elementor-2 .elementor-element.elementor-element-502ad9a{width:60%;}.elementor-2 .elementor-element.elementor-element-2872bcf{width:40%;}}@media(max-width:1024px){.elementor-2 .elementor-element.elementor-element-f48495e{margin-top:50px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-3560b39{margin-top:50px;margin-bottom:50px;}.elementor-2 .elementor-element.elementor-element-bcacb3b > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-d230cb5 > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-0e47b07{margin-top:30px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-4e3bd96 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/3);flex:0 0 calc(100%/3);max-width:calc(100%/3);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-09ce4a6{margin-top:50px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-0613d2f > .elementor-widget-container{margin:0px 0px 20px 0px;}.elementor-2 .elementor-element.elementor-element-b1ec5f9{margin-top:50px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-9a38de0 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/3);flex:0 0 calc(100%/3);max-width:calc(100%/3);}.elementor-2 .elementor-element.elementor-element-9a38de0 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-9a38de0 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-32205a1{margin-top:50px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-8bf285e{margin-top:50px;margin-bottom:50px;}.elementor-2 .elementor-element.elementor-element-565bc9e .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/4);flex:0 0 calc(100%/4);max-width:calc(100%/4);}.elementor-2 .elementor-element.elementor-element-565bc9e .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-565bc9e .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-9d8b23b{margin-top:50px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content{padding:50px 50px 50px 50px;}.elementor-2 .elementor-element.elementor-element-d853d25 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 > .elementor-widget-container{padding:45px 45px 45px 45px;}.elementor-2 .elementor-element.elementor-element-da24794{margin-top:50px;margin-bottom:50px;}.elementor-2 .elementor-element.elementor-element-7baa0b9 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/4);flex:0 0 calc(100%/4);max-width:calc(100%/4);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .leo-instagram-size{padding-left:calc(30px/2);padding-right:calc(30px/2);padding-top:calc(25px/2);padding-bottom:calc(25px/2);}.elementor-2 .elementor-element.elementor-element-ca6ae37{margin-top:50px;margin-bottom:50px;}.elementor-2 .elementor-element.elementor-element-0b07edf > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-dd23e6c > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-e5f10cc > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-2 .elementor-element.elementor-element-9f70905 > .elementor-widget-container{margin:0px 0px 30px 0px;}}@media(max-width:767px){.elementor-2 .elementor-element.elementor-element-f48495e{margin-top:25px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-7ac350e .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-225a4a6 .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-3f4a19c .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-e3780a1 .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-3560b39{margin-top:30px;margin-bottom:30px;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-57a6e7b .elementor-image-box-content{padding:131px 15px 131px 15px;}.elementor-2 .elementor-element.elementor-element-bcacb3b .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-d230cb5 .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-cc9f820 .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-d7a8c17 .elementor-image-box-img{margin-bottom:24px;}.elementor-2 .elementor-element.elementor-element-4e3bd96 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-4e3bd96 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-09ce4a6{margin-top:10px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-ab97985 > .elementor-element-populated{margin:0px 0px 0px 0px;}.elementor-2 .elementor-element.elementor-element-0613d2f{text-align:center;}.elementor-2 .elementor-element.elementor-element-b1ec5f9{margin-top:25px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-9a38de0 .elementor-LeoProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-2 .elementor-element.elementor-element-9a38de0 .slick-list{margin-left:calc(-30px/2);margin-right:calc(-30px/2);}.elementor-2 .elementor-element.elementor-element-9a38de0 .item{padding-left:calc(30px/2);padding-right:calc(30px/2);}.elementor-2 .elementor-element.elementor-element-32205a1{margin-top:25px;margin-bottom:25px;}.elementor-2 .elementor-element.elementor-element-8bf285e{margin-top:30px;margin-bottom:30px;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-1404493 .elementor-image-box-content{padding:131px 15px 131px 15px;}.elementor-2 .elementor-element.elementor-element-565bc9e .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/2);flex:0 0 calc(100%/2);max-width:calc(100%/2);}.elementor-2 .elementor-element.elementor-element-565bc9e .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-2 .elementor-element.elementor-element-565bc9e .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-2 .elementor-element.elementor-element-9d8b23b{margin-top:30px;margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-0978561 > .elementor-element-populated{padding:0px 0px 0px 0px;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-img{margin-bottom:0px;}.elementor-2 .elementor-element.elementor-element-3640cb1 .elementor-image-box-content{padding:30px 30px 30px 30px;}.elementor-2 .elementor-element.elementor-element-4f3f6be > .elementor-element-populated{padding:0px 0px 0px 0px;}.elementor-2 .elementor-element.elementor-element-d853d25 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/1);flex:0 0 calc(100%/1);max-width:calc(100%/1);}.elementor-2 .elementor-element.elementor-element-d853d25 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 .item{padding-left:calc(0px/2);padding-right:calc(0px/2);}.elementor-2 .elementor-element.elementor-element-d853d25 > .elementor-widget-container{margin:30px 0px 0px 0px;padding:30px 30px 30px 30px;}.elementor-2 .elementor-element.elementor-element-da24794{margin-top:30px;margin-bottom:30px;}.elementor-2 .elementor-element.elementor-element-7baa0b9 .elementor-ApProductCarousel.grid .item{-ms-flex:0 0 calc(100%/2);flex:0 0 calc(100%/2);max-width:calc(100%/2);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .slick-list{margin-left:calc(-0px/2);margin-right:calc(-0px/2);}.elementor-2 .elementor-element.elementor-element-7baa0b9 .leo-instagram-size{padding-left:calc(0px/2);padding-right:calc(0px/2);padding-top:calc(25px/2);padding-bottom:calc(25px/2);}.elementor-2 .elementor-element.elementor-element-ca6ae37{margin-top:30px;margin-bottom:30px;}.elementor-2 .elementor-element.elementor-element-0b07edf .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-dd23e6c .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-e5f10cc .elementor-image-box-img{margin-bottom:15px;}.elementor-2 .elementor-element.elementor-element-9f70905 .elementor-image-box-img{margin-bottom:15px;}}@media(max-width:1024px) and (min-width:768px){.elementor-2 .elementor-element.elementor-element-866b823{width:50%;}.elementor-2 .elementor-element.elementor-element-c7bd7df{width:50%;}.elementor-2 .elementor-element.elementor-element-1c739a1{width:50%;}.elementor-2 .elementor-element.elementor-element-a78b06e{width:50%;}.elementor-2 .elementor-element.elementor-element-347a89c{width:50%;}.elementor-2 .elementor-element.elementor-element-07b832b{width:50%;}.elementor-2 .elementor-element.elementor-element-f7f6463{width:50%;}.elementor-2 .elementor-element.elementor-element-d3f8db7{width:50%;}}</style><link class="load_font_frontend" rel="stylesheet" href="css/2.css" type="text/css" media="all"><style id="elementor-post-3">.elementor-3 .elementor-element.elementor-element-ed02a74:not(.elementor-motion-effects-element-type-background), .elementor-3 .elementor-element.elementor-element-ed02a74 > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:#f5f3eb;}.elementor-3 .elementor-element.elementor-element-ed02a74{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;padding:80px 0px 80px 0px;}.elementor-3 .elementor-element.elementor-element-ed02a74 > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-3 .elementor-element.elementor-element-7d3b569 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-2da37d7 .title_block{text-align:left;font-size:16px;font-weight:700;line-height:24px;padding:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-2da37d7 .title_block, .elementor-3 .elementor-element.elementor-element-2da37d7 .title_block *{color:#4e423d;}.elementor-3 .elementor-element.elementor-element-2da37d7 .list-items, .elementor-3 .elementor-element.elementor-element-2da37d7 .list-items *{text-align:left;justify-content:left;}.elementor-3 .elementor-element.elementor-element-2da37d7 .linklist-menu li{line-height:30px;}.elementor-3 .elementor-element.elementor-element-ce6b330 > .elementor-element-populated{border-style:solid;border-width:0px 0px 0px 1px;border-color:#dedace;transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-ce6b330 > .elementor-element-populated > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-3 .elementor-element.elementor-element-a147d5e .title_block{text-align:left;font-size:16px;font-weight:700;line-height:24px;padding:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-a147d5e .title_block, .elementor-3 .elementor-element.elementor-element-a147d5e .title_block *{color:#4e423d;}.elementor-3 .elementor-element.elementor-element-a147d5e .list-items, .elementor-3 .elementor-element.elementor-element-a147d5e .list-items *{text-align:left;justify-content:left;}.elementor-3 .elementor-element.elementor-element-a147d5e .linklist-menu li{line-height:30px;}.elementor-3 .elementor-element.elementor-element-497b04f > .elementor-element-populated{border-style:solid;border-width:0px 0px 0px 1px;border-color:#dedace;transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-497b04f > .elementor-element-populated > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-3 .elementor-element.elementor-element-53f342c .title_block{text-align:left;font-size:16px;font-weight:700;line-height:24px;padding:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-53f342c .title_block, .elementor-3 .elementor-element.elementor-element-53f342c .title_block *{color:#4e423d;}.elementor-3 .elementor-element.elementor-element-53f342c .list-items, .elementor-3 .elementor-element.elementor-element-53f342c .list-items *{text-align:left;justify-content:left;}.elementor-3 .elementor-element.elementor-element-53f342c .linklist-menu li{line-height:30px;}.elementor-3 .elementor-element.elementor-element-e898ea4 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-42b0b2e .elementor-image img{width:100%;max-width:100%;}.elementor-3 .elementor-element.elementor-element-0c7bc52 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-dd9b411.elementor-widget-heading .elementor-heading-title{color:#4e423d;}.elementor-3 .elementor-element.elementor-element-dd9b411 .elementor-heading-title{font-size:16px;font-weight:700;line-height:24px;}.elementor-3 .elementor-element.elementor-element-dd9b411 > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-f92e88a.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-3 .elementor-element.elementor-element-f92e88a.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-3 .elementor-element.elementor-element-f92e88a.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-f92e88a .elementor-image-box-wrapper .elementor-image-box-img{width:15%;}.elementor-3 .elementor-element.elementor-element-f92e88a .elementor-image-box-img img{transition-duration:0.3s;}.elementor-3 .elementor-element.elementor-element-f92e88a .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:15px;font-weight:600;line-height:22px;}.elementor-3 .elementor-element.elementor-element-f92e88a .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-3 .elementor-element.elementor-element-f92e88a > .elementor-widget-container{margin:0px 0px 15px 0px;}.elementor-3 .elementor-element.elementor-element-77d697c.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-3 .elementor-element.elementor-element-77d697c.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-3 .elementor-element.elementor-element-77d697c.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-77d697c .elementor-image-box-wrapper .elementor-image-box-img{width:15%;}.elementor-3 .elementor-element.elementor-element-77d697c .elementor-image-box-img img{transition-duration:0.3s;}.elementor-3 .elementor-element.elementor-element-77d697c .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:18px;font-weight:400;line-height:40px;}.elementor-3 .elementor-element.elementor-element-77d697c .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-3 .elementor-element.elementor-element-77d697c > .elementor-widget-container{margin:0px 0px 15px 0px;}.elementor-3 .elementor-element.elementor-element-c131d51.elementor-position-right .elementor-image-box-img{margin-left:15px;}.elementor-3 .elementor-element.elementor-element-c131d51.elementor-position-left .elementor-image-box-img{margin-right:15px;}.elementor-3 .elementor-element.elementor-element-c131d51.elementor-position-top .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-c131d51 .elementor-image-box-wrapper .elementor-image-box-img{width:15%;}.elementor-3 .elementor-element.elementor-element-c131d51 .elementor-image-box-img img{transition-duration:0.3s;}.elementor-3 .elementor-element.elementor-element-c131d51 .elementor-image-box-content .elementor-image-box-title{color:#000000;font-size:15px;font-weight:600;line-height:22px;}.elementor-3 .elementor-element.elementor-element-c131d51 .elementor-image-box-content .elementor-image-box-description{color:#999999;font-size:15px;line-height:22px;}.elementor-3 .elementor-element.elementor-element-c131d51 > .elementor-widget-container{margin:0px 0px 15px 0px;}.elementor-3 .elementor-element.elementor-element-675fc9e:not(.elementor-motion-effects-element-type-background), .elementor-3 .elementor-element.elementor-element-675fc9e > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:#f5f3eb;}.elementor-3 .elementor-element.elementor-element-675fc9e{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;}.elementor-3 .elementor-element.elementor-element-675fc9e > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-3 .elementor-element.elementor-element-7cb03ae .elementor-divider-separator{border-top-style:solid;border-top-width:1px;border-top-color:#dedace;width:100%;}.elementor-3 .elementor-element.elementor-element-7cb03ae .elementor-divider{padding-top:15px;padding-bottom:15px;}.elementor-3 .elementor-element.elementor-element-dc5df8c > .elementor-container > .elementor-row > .elementor-column > .elementor-column-wrap > .elementor-widget-wrap{align-content:center;align-items:center;}.elementor-3 .elementor-element.elementor-element-dc5df8c:not(.elementor-motion-effects-element-type-background), .elementor-3 .elementor-element.elementor-element-dc5df8c > .elementor-motion-effects-container > .elementor-motion-effects-layer{background-color:#f5f3eb;}.elementor-3 .elementor-element.elementor-element-dc5df8c{transition:background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s;padding:44px 0px 44px 0px;}.elementor-3 .elementor-element.elementor-element-dc5df8c > .elementor-background-overlay{transition:background 0.3s, border-radius 0.3s, opacity 0.3s;}.elementor-3 .elementor-element.elementor-element-d6dcc75 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-c23ea52 > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-2c3a1c3{text-align:center;}.elementor-3 .elementor-element.elementor-element-2c3a1c3.elementor-widget-heading .elementor-heading-title{color:#555555;}.elementor-3 .elementor-element.elementor-element-2c3a1c3 .elementor-heading-title{font-size:15px;line-height:22px;}.elementor-3 .elementor-element.elementor-element-2c3a1c3 > .elementor-widget-container{margin:10px 0px 10px 0px;}.elementor-3 .elementor-element.elementor-element-790c5ad > .elementor-element-populated{padding:0px 15px 0px 15px;}.elementor-3 .elementor-element.elementor-element-e94549a{text-align:right;}.elementor-3 .elementor-element.elementor-element-e94549a .elementor-image img{max-width:100%;}@media(max-width:1024px) and (min-width:768px){.elementor-3 .elementor-element.elementor-element-7d3b569{width:33.33%;}.elementor-3 .elementor-element.elementor-element-ce6b330{width:33.34%;}.elementor-3 .elementor-element.elementor-element-497b04f{width:33.33%;}.elementor-3 .elementor-element.elementor-element-e898ea4{width:50%;}.elementor-3 .elementor-element.elementor-element-0c7bc52{width:50%;}.elementor-3 .elementor-element.elementor-element-d6dcc75{width:30%;}.elementor-3 .elementor-element.elementor-element-c23ea52{width:30%;}.elementor-3 .elementor-element.elementor-element-790c5ad{width:40%;}}@media(max-width:1024px){.elementor-3 .elementor-element.elementor-element-2da37d7 > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-a147d5e > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-53f342c > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-42b0b2e > .elementor-widget-container{margin:0px 0px 30px 0px;}.elementor-3 .elementor-element.elementor-element-dc5df8c{padding:30px 0px 30px 0px;}}@media(max-width:767px){.elementor-3 .elementor-element.elementor-element-ce6b330 > .elementor-element-populated{border-width:0px 0px 0px 0px;}.elementor-3 .elementor-element.elementor-element-497b04f > .elementor-element-populated{border-width:0px 0px 0px 0px;}.elementor-3 .elementor-element.elementor-element-f92e88a .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-77d697c .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-c131d51 .elementor-image-box-img{margin-bottom:15px;}.elementor-3 .elementor-element.elementor-element-e94549a{text-align:center;}.elementor-3 .elementor-element.elementor-element-e94549a .elementor-image img{max-width:100%;}}</style><script type="29fc85658decb060ec326d70-text/javascript">
        
        var FancyboxI18nClose = "Close";
        var FancyboxI18nNext = "Next";
        var FancyboxI18nPrev = "Previous";
        var current_link = "http://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/";		
        var currentURL = window.location;
        currentURL = String(currentURL);
        currentURL = currentURL.replace("https://","").replace("http://","").replace("www.","").replace( /#\w*/, "" );
        current_link = current_link.replace("https://","").replace("http://","").replace("www.","");
        var text_warning_select_txt = "Please select One to remove?";
        var text_confirm_remove_txt = "Are you sure to remove footer row?";
        var close_bt_txt = "Close";
        var list_menu = [];
        var list_menu_tmp = {};
        var list_tab = [];
        var isHomeMenu = 0;
        
    </script>
    </head>
    <body id="contact" class="lang-en country-us currency-usd layout-left-column page-contact tax-display-disabled fullwidth">
    <main id="page">
 <header id="header">
    <div class="header-banner">
    <div class="container">
    <div class="inner"></div>
    </div>
    </div>
    <nav class="header-nav">
    <div class="topnav">
    <div class="container">
    <div class="inner"></div>
    </div>
    </div>
    <div class="bottomnav">
    <div class="container">
    <div class="inner"></div>
    </div>
    </div>
    </nav>
    <div class="header-top">
    <div class="inner"> <div data-elementor-type="post" data-elementor-id="1" class="elementor elementor-1" data-elementor-settings="[]">
    <div class="elementor-inner">
    <div class="elementor-section-wrap">
    <section class="elementor-element elementor-element-51d2726 header-nav-h1 elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="51d2726" data-element_type="section" data-settings="{" background_background":"classic"}"="">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-a404a37 elementor-column elementor-col-100 elementor-top-column" data-id="a404a37" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-30ff9b5 header-slide elementor-widget elementor-widget-LeoBlockCarousel" data-id="30ff9b5" data-element_type="widget" data-settings="{" slides_to_show":"1","slides_to_scroll":"1","slick_dot":"0","slides_to_show_tablet":"1","slides_to_scroll_tablet":"1","slides_to_show_mobile":1,"slides_to_scroll_mobile":1,"slick_arrows":"1","infinite":"1","speed":500,"autoplay":"1","pause_on_hover":"1","autoplay_speed":5000}"="" data-widget_type="LeoBlockCarousel.default">
    <div class="elementor-widget-container">
    <div class="block block_carousel exclusive LeoBlockCarousel elementor-slick-slider ">
    <div class="block_content">
    <div class="slick-row">
    <div class="slick-blogs slick-slider slick-loading" id="LeoBlockCarousel_2167032087">
    <div class="slick-slide  first">
    <div class="item">
    <div class="block-carousel-container">
    <div class="left-block">
    <div class="block-carousel-image-container image">
    <div class="ap-more-info" data-id="0"></div>
    <div class="item-title" style="width:100%"></div>
    <div class="item-description">Free shipping over $55 • Happiness guarantee • Delivery in 3-6 business days</div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="slick-slide ">
    <div class="item">
    <div class="block-carousel-container">
    <div class="left-block">
    <div class="block-carousel-image-container image">
    <div class="ap-more-info" data-id="7508"></div>
    <div class="item-title" style="width:100%"></div>
    <div class="item-description">Free shipping over $55 • Happiness guarantee • Delivery in 3-6 business days</div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="slick-slide ">
    <div class="item">
    <div class="block-carousel-container">
    <div class="left-block">
    <div class="block-carousel-image-container image">
    <div class="ap-more-info" data-id="9223372036854775807"></div>
    <div class="item-title" style="width:100%"></div>
    <div class="item-description">Free shipping over $55 • Happiness guarantee • Delivery in 3-6 business days</div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <script type="29fc85658decb060ec326d70-text/javascript" class="autojs" data-form_id="LeoBlockCarousel_2167032087">
        var LeoBlockCarousel_2167032087 = (function(){
        $('#LeoBlockCarousel_2167032087').imagesLoaded( function() {
            $('#LeoBlockCarousel_2167032087').slick(
                            {
                    centerMode: false,
                    centerPadding: '0px',
                    dots: false,
                    infinite: true,
                    vertical: false,
                    verticalSwiping : false,
                    autoplay: true,
                    pauseonhover: true,
                    autoplaySpeed: 5000,
                                    speed: 500,
                    arrows: true,
                    rows: 1,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    rtl: false,
                                    responsive: [{
                                        breakpoint: 1025,
                                        settings: {
                                            slidesToShow: 1,
                                            slidesToScroll: 1
                                        }
                                    }, {
                                        breakpoint: 768,
                                        settings: {
                                            slidesToShow: 1,
                                            slidesToScroll: 1
                                        }
                                    }]
                }
                        );
            $('#LeoBlockCarousel_2167032087').removeClass('slick-loading').addClass('slick-loaded').parents('.slick-row').addClass('hide-loading');
        });
        });
    </script>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    <section class="elementor-element elementor-element-e441f08 header-top-h1 elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="e441f08" data-element_type="section">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-eb31c49 elementor-column elementor-col-25 elementor-top-column" data-id="eb31c49" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-0447398 elementor-widget elementor-widget-LeoGenCode" data-id="0447398" data-element_type="widget" data-widget_type="LeoGenCode.default">
    <div class="elementor-widget-container">
    <div class="header_logo"><a href="user_index.jsp"><img class="logo img-fluid" src="images/logo-1694594527.jpg" alt="Leo Postero Elementor"></a></div> </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-0726d34 elementor-column elementor-col-50 elementor-top-column" data-id="0726d34" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-bb36c5f elementor-widget elementor-widget-LeoModule" data-id="bb36c5f" data-element_type="widget" data-widget_type="LeoModule.default">
    <div class="elementor-widget-container">
    
    
    </form>
    </div>
    <script type="29fc85658decb060ec326d70-text/javascript">
        var blocksearch_type = 'top';
    </script>
    
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-a31c5a9 icon-w elementor-column elementor-col-25 elementor-top-column" data-id="a31c5a9" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-bf17b59 elementor-widget__width-initial elementor-hidden-tablet elementor-hidden-phone elementor-widget elementor-widget-LeoModule" data-id="bf17b59" data-element_type="widget" data-widget_type="LeoModule.default">
    <div class="elementor-widget-container">
    <div id="_desktop_language_selector">
    <div class="language-selector-wrapper popup-over">
    <div class="language-selector dropdown js-dropdown">
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-a2ef05f elementor-widget__width-initial elementor-hidden-tablet elementor-hidden-phone elementor-widget elementor-widget-LeoModule" data-id="a2ef05f" data-element_type="widget" data-widget_type="LeoModule.default">
    <div class="elementor-widget-container">
    <div id="_desktop_currency_selector" class="popup-over">
    <div class="currency-selector dropdown js-dropdown">
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-0f8b12f elementor-widget__width-initial elementor-widget elementor-widget-LeoModule" data-id="0f8b12f" data-element_type="widget" data-widget_type="LeoModule.default">
    <div class="elementor-widget-container">
    
    <div id="leo_block_top" class="leo_block_top popup-over dropdown js-dropdown">
    <a href="javascript:void(0)" data-toggle="dropdown" class="popup-title" title="Setting">
    <i class="fa-light fa-user"></i>
    </a>
    <div class="popup-content dropdown-menu">
    <div class="row">
    <div class="col-md-6 col-sm-12 col-xs-12">
    <div class="language-selector">
    </div>
    </div>
    <div class="col-md-6 col-sm-12 col-xs-12">
    <ul class="user-info">
    <li>
    <a class="signin leo-quicklogin" data-enable-sociallogin="enable" data-type="popup" data-layout="login" href="User_login.jsp" title="Log in to your customer account" rel="nofollow">
    <span>Sign in</span>
    </a>
    </li>
    <li>
    <a class="register leo-quicklogin" data-enable-sociallogin="enable" data-type="popup" data-layout="register" href="artist_login.jsp" title="Log in to your customer account" rel="nofollow">
    <span>Register</span>
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    
    </div>
    </div>
    <div class="elementor-element elementor-element-1f8374c elementor-widget__width-initial elementor-hidden-phone elementor-widget elementor-widget-LeoGenCode" data-id="1f8374c" data-element_type="widget" data-widget_type="LeoGenCode.default">
    <div class="elementor-widget-container">
    <a class="ap-btn-wishlist ap-wishlist" href="" title="Wishlist" rel="nofollow">
    <i class="fa-light fa-heart"></i>
    <span class="ap-total-wishlist ap-total"></span>
    </a>
    </div>
    </div>
    <div class="elementor-element elementor-element-bf91b06 elementor-widget__width-initial elementor-widget elementor-widget-LeoModule" data-id="bf91b06" data-element_type="widget" data-widget_type="LeoModule.default">
    <div class="elementor-widget-container">
    <div id="_desktop_cart">
    <div class="blockcart cart-preview leo-blockcart show-leo-loading  inactive" data-refresh-url="//demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/module/ps_shoppingcart/ajax">
    <div class="header">
    <i class="fa-light fa-bag-shopping"></i>
    <span class="cart-products-count">0</span>
    <span class="price totals-cart">$0.00</span>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    <section class="elementor-element elementor-element-b3bd2a4 header-top-h1 elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="b3bd2a4" data-element_type="section" data-settings="{" background_background":"classic"}"="">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-33fa6f7 elementor-column elementor-col-100 elementor-top-column" data-id="33fa6f7" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-7d072ff elementor-widget elementor-widget-LeoBootstrapmenu" data-id="7d072ff" data-element_type="widget" data-settings="{" source":"ac70e5b81cccd4671f8c75a464e569bd"}"="" data-widget_type="LeoBootstrapmenu.default">
    <div class="elementor-widget-container">
    <div id="memgamenu-form_ac70e5b81cccd4671f8c75a464e569bd" class="ApMegamenu">
    <nav data-megamenu-id="ac70e5b81cccd4671f8c75a464e569bd" class="leo-megamenu cavas_menu navbar navbar-default enable-canvas " role="navigation">
    
    <div class="navbar-header">
    <button type="button" class="navbar-toggler hidden-lg-up" data-toggle="collapse" data-target=".megamenu-off-canvas-ac70e5b81cccd4671f8c75a464e569bd">
    <span class="sr-only">Toggle navigation</span>
    ☰
    
    </button>
    </div>
    
    <div class="leo-top-menu collapse navbar-toggleable-md megamenu-off-canvas megamenu-off-canvas-ac70e5b81cccd4671f8c75a464e569bd">
    <ul class="nav navbar-nav megamenu horizontal"><li data-menu-type="controller" class="nav-item parent     leo-1">
    <a class="nav-link  has-category" data-toggle="dropdown" href="user_index.jsp" target="_self">
    <span class="menu-title">Home</span>
    </a>
    <b class="caret"></b>
    <div class="dropdown-sub dropdown-menu" style="width:250px">
    <div class="dropdown-menu-inner">
    <div class="row">
    <div class="mega-col col-md-12">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1676356932">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs863822652" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    </div>
    </div>
    </div>
    </li>
    <li data-menu-type="category" class="nav-item parent  leo-1">
    <a class="nav-link  has-category" data-toggle="dropdown" href="Portfolio.jsp" target="_self">
    <span class="menu-title">Shop</span>
    </a>
    <b class="caret"></b>
    <div class="dropdown-sub dropdown-menu">
    <div class="dropdown-menu-inner">
    <div class="row">
    <div class="mega-col col-md-2">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1678958732">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs811428824" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    <div class="mega-col col-md-2">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1678958794">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs403440613" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    <div class="mega-col col-md-2">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1689215785">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs1418407470" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    <div class="mega-col col-md-6">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1557391205">
    <div class="widget-html">
    <div class="widget-inner">
   </div>
    </div> </div>
    </div>
    </div>
    </div>
    </div>
    </li>
    <li data-menu-type="category" class="nav-item parent  dropdown aligned-left  leo-1">
    
    <b class="caret"></b>
    <div class="dropdown-sub dropdown-menu" style="width:450px">
    <div class="dropdown-menu-inner">
    <div class="row">
    <div class="mega-col col-md-6">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1580460018">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs1570084" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    <div class="mega-col col-md-6">
    <div class="mega-col-inner ">
    <div class="leo-widget" data-id_widget="1679036695">
    <div class="widget-links">
    <div class="widget-inner">
    <div id="tabs806919404" class="panel-group">
    </div>
    </div>
    </div>
    </div> </div>
    </div>
    </div>
    </div>
    </div>
    </li>
    <li data-menu-type="cms" class="nav-item   leo-1">
    <a class="nav-link has-category" href="about.html" target="_self">
    <span class="menu-title">About us</span>
    </a>
    </li>
    <li data-menu-type="controller" class="nav-item   leo-1">
    <a class="nav-link has-category" href="./contact.html" target="_self">
    <span class="menu-title">Contact</span>
    </a>
    </li>
    </ul></div>
    </nav>
    <script type="29fc85658decb060ec326d70-text/javascript">
        list_menu_tmp.id = 'ac70e5b81cccd4671f8c75a464e569bd';
        list_menu_tmp.type = 'horizontal';
        list_menu_tmp.show_cavas =1;
        list_menu_tmp.list_tab = list_tab;
        list_menu.push(list_menu_tmp);
        list_menu_tmp = {};	
        list_tab = {};
    </script>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    </div>
    </div>
    </div>
    </div>
    </div>
    </header>
    <section id="wrapper">
    <aside id="notifications">
    <div class="notifications-container container">
    </div>
    </aside>
    <div class="bread-top">
    <div class="container">
    <nav data-depth="2" class="breadcrumb hidden-sm-down">
    <ol>
    <li>
    <a href="./index.html"><span>Home</span></a>
    </li>
    <li>
    <span>Contact us</span>
    </li>
    </ol>
    </nav>
    </div>
    </div>
    <div class="container">
    <div class="row">
    <div id="left-column" class="col-xs-12 col-sm-4 col-md-3">
    <div class="contact-rich">
    <h3>Register</h3>
    <div class="block">
    <div class="icon"><i class="material-icons"></i></div>
    <div class="data">Infiniti<br>India</div>
    </div>
    <hr>
    <div class="block">
    <div class="icon"><i class="material-icons"></i></div>
    <div class="data email">
    Email us:<br>
    </div>
    <script type="29fc85658decb060ec326d70-text/javascript">document.write(unescape('%3c%61%20%68%72%65%66%3d%22%6d%61%69%6c%74%6f%3a%64%65%6d%6f%40%64%65%6d%6f%2e%63%6f%6d%22%20%3e%64%65%6d%6f%40%64%65%6d%6f%2e%63%6f%6d%3c%2f%61%3e'))</script>
    </div>
    </div>
    </div>
    <%
            //Checking whether customer in session or not
            if (session.getAttribute("User_mail") != null && session.getAttribute("User_mail") != "") {
        %>
        
        
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from reg where email='"+ session.getAttribute("User_mail")+"'";
resultSet = statement.executeQuery(sql);



while(resultSet.next()){
%>
    
    <div id="content-wrapper" class="js-content-wrapper left-column col-xs-12 col-sm-12 col-md-8 col-lg-9">
    <section id="main">
    <section id="content" class="page-content card card-block">
    <section class="contact-form">
    <form action="" method="post" enctype="multipart/form-data">
    <section class="form-fields">
    <div class="form-group row">
    <div class="col-md-9 col-md-offset-3">
    <h3>Your Profile</h3>
    <p></p>
    </div>
    </div>
    <div class="form-group row">
    <label class="col-md-3 form-control-label" for="uid">ID</label>
    <div class="col-md-6">
    <input id="uid" class="form-control" name="uid" type="text" value="<%=resultSet.getString("uid") %>" >
    </div>
    </div>
    <div class="form-group row">
    <label class="col-md-3 form-control-label" for="name">Name</label>
    <div class="col-md-6">
    <input id="name" class="form-control" name="name" type="text" value="<%=resultSet.getString("name") %>">
    </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="email">Email address</label>
        <div class="col-md-6">
        <input id="email" class="form-control" name="email" type="email" value="<%=resultSet.getString("email") %>" >
        </div>
    </div>
    <div class="form-group row">
            <label class="col-md-3 form-control-label" for="Password">Password</label>
            <div class="col-md-6">
            <input id="password" class="form-control" name="password" type="text" value="<%=resultSet.getString("password") %>" >
            </div>
    </div>
    <div class="form-group row">
         <label class="col-md-3 form-control-label" for="number">Number</label>
        <div class="col-md-6">
            <input id="num" class="form-control" name="num" type="text" value="<%=resultSet.getString("num") %>" >
        </div>
    </div>
    <div class="form-group row">
    <div class="col-md-6">
    </div>
    </div>
    <div class="form-group row">
    <label class="col-md-3 form-control-label" for="Address">Address</label>
    <div class="col-md-9">
    <input id="Address" class="form-control" name="address" type="text" value="<%=resultSet.getString("address") %>" rows="3"></input>
    </div>
    </div>
    <div class="form-group row">
        <label class="col-md-3 form-control-label" for="Date">Date</label>
       <div class="col-md-6">
           <input id="date" class="form-control" name="date" type="date" value="<%=resultSet.getString("added_date") %>" >
       </div>
   </div>
   <div class="form-group row">
    <label class="col-md-3 form-control-label" for="Gender">Gender</label>
   <div class="col-md-6">
       <input id="gender" class="form-control" name="gender" type="text" value="<%=resultSet.getString("gender") %>" >
   </div>
</div>
<div class="form-group row">
    <label class="col-md-3 form-control-label" for="pincode">Pin-Code</label>
   <div class="col-md-6">
       <input id="pincode" class="form-control" name="pincode" type="text" value="<%=resultSet.getString("pin_code") %>">
   </div>
</div>
   
    <div class="form-group row">
    <div class="offset-md-3">
    </div>
    </div>
    </section>
    <footer class="form-footer text-sm-right">
    <style>
              input[name=url] {
                display: none !important;
              }
            </style>
    <input type="text" name="url" value="">
    <input type="hidden" name="token" value="eeb9e49a28283f30c92a80b9985cf078">
    <input class="btn btn-primary" type="submit" name="" value="Save Changes">
    </footer>
    </form>
    <div class="form-group row">
    <div class="offset-md-3">
    </div>
    </div>
    <footer class="form-footer text-sm-right">
    <style>
              input[name=url] {
                display: none !important;
              }
            </style>
    <input type="text" name="url" value="">
    <input type="hidden" name="token" value="eeb9e49a28283f30c92a80b9985cf078">
    <a href="user_dlt_profile.jsp?id=<%=resultSet.getString("uid") %>"><input class="btn btn-primary" type="submit" name="" value="Delete Profile">
    </footer>
    
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<%
            } else {
                
            }
        %>
    </section>
    </div>
    </div>
    </div>
    </section>
    <footer id="footer" class="footer-container js-footer">
    <div class="footer-top">
    <div class="inner"> <div data-elementor-type="post" data-elementor-id="3" class="elementor elementor-3" data-elementor-settings="[]">
    <div class="elementor-inner">
    <div class="elementor-section-wrap">
    <section class="elementor-element elementor-element-ed02a74 elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="ed02a74" data-element_type="section" data-settings="{" background_background":"classic"}"="">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-7d3b569 elementor-column elementor-col-20 elementor-top-column" data-id="7d3b569" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-2da37d7 LeoBlockLink-toggle-none elementor-widget elementor-widget-LeoBlockLink" data-id="2da37d7" data-element_type="widget" data-widget_type="LeoBlockLink.default">
    <div class="elementor-widget-container">
    <div class="LeoBlockLink">
    <div class="linklist-toggle h6" data-toggle="linklist-widget">
    <div class="title_block">Customer Service</div>
    <span class="icon-toggle fa fa-angle-down"></span>
    </div>
    <div class="linklist-menu">
    <ul class="list-items vertical">
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us">
    Contact Us
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Low Price Guarantee
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/order">
    Ordering
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/content/1-delivery">
    Shipping &amp; Delivery
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/index.php?controller=order-return">
    Returns
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Gift Cards
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    FAQs
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-ce6b330 elementor-column elementor-col-20 elementor-top-column" data-id="ce6b330" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-a147d5e LeoBlockLink-toggle-none elementor-widget elementor-widget-LeoBlockLink" data-id="a147d5e" data-element_type="widget" data-widget_type="LeoBlockLink.default">
    <div class="elementor-widget-container">
    <div class="LeoBlockLink">
    <div class="linklist-toggle h6" data-toggle="linklist-widget">
    <div class="title_block">Shop</div>
    <span class="icon-toggle fa fa-angle-down"></span>
    </div>
    <div class="linklist-menu">
    <ul class="list-items vertical">
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/2-home">
    Art Prints
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/3-clothes">
    Canvas Prints
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/4-men">
    iPhone Cases
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/6-accessories">
    Tapestries Comforters
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/8-home-accessories">
    Throw Pillows
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/9-art">
    Shower Curtains
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/2-home">
    Gift Cards
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-497b04f elementor-column elementor-col-20 elementor-top-column" data-id="497b04f" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-53f342c LeoBlockLink-toggle-none elementor-widget elementor-widget-LeoBlockLink" data-id="53f342c" data-element_type="widget" data-widget_type="LeoBlockLink.default">
    <div class="elementor-widget-container">
    <div class="LeoBlockLink">
    <div class="linklist-toggle h6" data-toggle="linklist-widget">
    <div class="title_block">About Us</div>
    <span class="icon-toggle fa fa-angle-down"></span>
    </div>
    <div class="linklist-menu">
    <ul class="list-items vertical">
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/content/4-about-us">
    About Us
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/contact-us">
    Newsletter
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Careers
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Refer a Friend
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Student Discount
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Wholesale Program
    </a>
    </li>
    <li class="list-item vertical">
    <a class="item-text" href="#">
    Trade Program
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-e898ea4 elementor-column elementor-col-20 elementor-top-column" data-id="e898ea4" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-42b0b2e elementor-widget elementor-widget-image" data-id="42b0b2e" data-element_type="widget" data-widget_type="image.default">
    <div class="elementor-widget-container">
    <div class="elementor-image">
    <img src="images/postero-img-09.jpg" title="" alt=""> </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-0c7bc52 footer-info-h1 elementor-column elementor-col-20 elementor-top-column" data-id="0c7bc52" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-dd9b411 elementor-widget elementor-widget-heading" data-id="dd9b411" data-element_type="widget" data-widget_type="heading.default">
    <div class="elementor-widget-container">
    <h4 class="elementor-heading-title elementor-size-default">Visit Us</h4> </div>
    </div>
    <div class="elementor-element elementor-element-f92e88a elementor-position-left elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="f92e88a" data-element_type="widget" data-widget_type="image-box.default">
    <div class="elementor-widget-container">
    <div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img src="images/location.svg" title="" alt=""></figure><div class="elementor-image-box-content"><div class="elementor-image-box-title">Postero Print Shop,</div><p class="elementor-image-box-description">
    2972 Westheimer Rd. Santa Ana,
    Illinois, USA</p></div></div> </div>
    </div>
    <div class="elementor-element elementor-element-77d697c elementor-position-left contact-wtf elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="77d697c" data-element_type="widget" data-widget_type="image-box.default">
    <div class="elementor-widget-container">
    <div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img src="images/call-calling_23addf17-41c1-4817-b480-60beec77209e.svg" title="" alt=""></figure><div class="elementor-image-box-content"><div class="elementor-image-box-title"><a href="tel:1-800-123-4567">1-800-123-4567</a></div><p class="elementor-image-box-description"><a href="/cdn-cgi/l/email-protection#b9dddcd4d6f9dddcd4d697dad6d4"><span class="__cf_email__" data-cfemail="395d5c5456795d5c5456175a5654">[email�&nbsp;protected]</span></a></p></div></div> </div>
    </div>
    <div class="elementor-element elementor-element-c131d51 elementor-position-left opentime-wr elementor-vertical-align-top elementor-widget elementor-widget-image-box" data-id="c131d51" data-element_type="widget" data-widget_type="image-box.default">
    <div class="elementor-widget-container">
    <div class="elementor-image-box-wrapper"><figure class="elementor-image-box-img"><img src="images/clock.svg" title="" alt=""></figure><div class="elementor-image-box-content"><p class="elementor-image-box-description">Mon - Sat: <span>7.00 am - 8.00 pm</span><br>
    Sunday:<span> 8.00 am - 6.00 pm</span></p></div></div> </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    <section class="elementor-element elementor-element-675fc9e elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="675fc9e" data-element_type="section" data-settings="{" background_background":"classic"}"="">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-6b14db1 elementor-column elementor-col-100 elementor-top-column" data-id="6b14db1" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-7cb03ae elementor-widget elementor-widget-divider" data-id="7cb03ae" data-element_type="widget" data-widget_type="divider.default">
    <div class="elementor-widget-container">
    <div class="elementor-divider">
    <span class="elementor-divider-separator"></span>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    <section class="elementor-element elementor-element-dc5df8c elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-inner-default elementor-section elementor-top-section" data-id="dc5df8c" data-element_type="section" data-settings="{" background_background":"classic"}"="">
    <div class="elementor-container elementor-column-gap-default">
    <div class="elementor-row">
    <div class="elementor-element elementor-element-d6dcc75 elementor-column elementor-col-33 elementor-top-column" data-id="d6dcc75" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-0fca89b elementor-widget elementor-widget-LeoGenCode" data-id="0fca89b" data-element_type="widget" data-widget_type="LeoGenCode.default">
    <div class="elementor-widget-container">
    <div class="footer_logo"><a href="https://demo80.leotheme.com/prestashop/leo_postero_elementor_demo/en/"><img class="logo img-fluid" src="images/logo-1694594527.jpg" alt="Leo Postero Elementor"></a></div> </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-c23ea52 elementor-column elementor-col-33 elementor-top-column" data-id="c23ea52" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-2c3a1c3 elementor-widget elementor-widget-heading" data-id="2c3a1c3" data-element_type="widget" data-widget_type="heading.default">
    <div class="elementor-widget-container">
    <div class="elementor-heading-title elementor-size-default">Copyright © 2023 <span style="color: #CA9236">Postero</span>. All rights reserved</div> </div>
    </div>
    </div>
    </div>
    </div>
    <div class="elementor-element elementor-element-790c5ad elementor-column elementor-col-33 elementor-top-column" data-id="790c5ad" data-element_type="column">
    <div class="elementor-column-wrap  elementor-element-populated">
    <div class="elementor-widget-wrap">
    <div class="elementor-element elementor-element-e94549a elementor-widget elementor-widget-image" data-id="e94549a" data-element_type="widget" data-widget_type="image.default">
    <div class="elementor-widget-container">
    <div class="elementor-image">
    <img src="images/post-pay.png" title="" alt=""> </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="footer-center">
    <div class="container">
    <div class="inner"></div>
    </div>
    </div>
    <div class="footer-bottom">
    <div class="container">
    <div class="inner"></div>
    </div>
    </div>
    </footer>
    <script src="js/rocket-loader.min.js" data-cf-settings="29fc85658decb060ec326d70-|49" defer=""></script>
    </body></html>
