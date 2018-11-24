.class public Lcom/dexcom/cgm/activities/FAQActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FAQActivity.java"


# instance fields
.field private m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

.field private m_faqList:Landroid/widget/ListView;

.field private m_faqListAdapter:Lcom/dexcom/cgm/activities/FAQListAdapter;

.field private m_faqListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/FAQActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_itemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/FAQActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_itemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/FAQActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/FAQActivity;->createListAdapters()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/FAQActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity;->updateViewWithListOnUiThread(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/FAQActivity;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity;->showDialogWithString(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/FAQListAdapter;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqListAdapter:Lcom/dexcom/cgm/activities/FAQListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/FAQActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/FAQActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqListItems:Ljava/util/List;

    return-object v0
.end method

.method private createListAdapters()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dexcom/cgm/activities/FAQListAdapter;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/FAQListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqListAdapter:Lcom/dexcom/cgm/activities/FAQListAdapter;

    .line 101
    sget v0, Lcom/dexcom/cgm/activities/R$id;->faq_faqList:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqList:Landroid/widget/ListView;

    .line 102
    return-void
.end method

.method private showDialogWithString(I)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dexcom/cgm/activities/FAQActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity$1;-><init>(Lcom/dexcom/cgm/activities/FAQActivity;I)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/FAQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method private updateViewWithListOnUiThread(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_faqListItems:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/dexcom/cgm/activities/FAQActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/FAQActivity$2;-><init>(Lcom/dexcom/cgm/activities/FAQActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/FAQActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method


# virtual methods
.method public loadWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 121
    new-instance v0, Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FAQ."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/FAQActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_in_right:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_out_left:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->synced_slide_out_right:I

    .line 128
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->faq_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_currentWebViewFragment:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_faq:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/FAQActivity;->setContentView(I)V

    .line 38
    sget v0, Lcom/dexcom/cgm/activities/R$id;->faq_progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;-><init>(Lcom/dexcom/cgm/activities/FAQActivity;Lcom/dexcom/cgm/activities/FAQActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method
