.class public Lcom/dexcom/cgm/activities/FAQListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FAQListAdapter.java"


# instance fields
.field private final m_activityContext:Landroid/content/Context;

.field private m_callingActivity:Lcom/dexcom/cgm/activities/FAQActivity;

.field private m_faqItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_faqItemList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_activityContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_activityContext:Landroid/content/Context;

    check-cast v0, Lcom/dexcom/cgm/activities/FAQActivity;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_callingActivity:Lcom/dexcom/cgm/activities/FAQActivity;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/FAQListAdapter;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/FAQListAdapter;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/FAQListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_activityContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/FAQListAdapter;)Lcom/dexcom/cgm/activities/FAQActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_callingActivity:Lcom/dexcom/cgm/activities/FAQActivity;

    return-object v0
.end method

.method private configureListClickListener(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/FAQListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/ShareService$FaqItem;

    .line 80
    sget v1, Lcom/dexcom/cgm/activities/R$id;->faq_list_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {v0}, Lcom/dexcom/cgm/share/ShareService$FaqItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v1, Lcom/dexcom/cgm/activities/R$id;->faq_list_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/FAQListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/FAQListAdapter$1;-><init>(Lcom/dexcom/cgm/activities/FAQListAdapter;Lcom/dexcom/cgm/share/ShareService$FaqItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_activityContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_activityContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_faqItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_faqItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/FAQListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->listitem_faq:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/FAQListAdapter;->configureListClickListener(ILandroid/view/View;)V

    .line 74
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public setupFaqList(Ljava/util/List;)V
    .locals 0
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
    .line 108
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQListAdapter;->m_faqItemList:Ljava/util/List;

    .line 109
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/FAQListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
