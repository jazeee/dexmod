.class Lcom/dexcom/cgm/activities/FAQListAdapter$1;
.super Ljava/lang/Object;
.source "FAQListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

.field final synthetic val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/FAQListAdapter;Lcom/dexcom/cgm/share/ShareService$FaqItem;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQListAdapter;->access$000(Lcom/dexcom/cgm/activities/FAQListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v1, "Item:"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;

    invoke-virtual {v2}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/FAQListAdapter;->access$100(Lcom/dexcom/cgm/activities/FAQListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_FAQ_Viewed:I

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQListAdapter;->access$200(Lcom/dexcom/cgm/activities/FAQListAdapter;)Lcom/dexcom/cgm/activities/FAQActivity;

    move-result-object v0

    const-string v1, "FAQ"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;

    invoke-virtual {v2}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getWebViewUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;

    invoke-virtual {v3}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/FAQActivity;->loadWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "Test"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->val$faqItem:Lcom/dexcom/cgm/share/ShareService$FaqItem;

    invoke-virtual {v1}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter$1;->this$0:Lcom/dexcom/cgm/activities/FAQListAdapter;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/FAQListAdapter;->access$200(Lcom/dexcom/cgm/activities/FAQListAdapter;)Lcom/dexcom/cgm/activities/FAQActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method
