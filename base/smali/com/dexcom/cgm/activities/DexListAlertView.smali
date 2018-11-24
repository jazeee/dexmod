.class public Lcom/dexcom/cgm/activities/DexListAlertView;
.super Landroid/widget/LinearLayout;
.source "DexListAlertView.java"


# instance fields
.field private m_endTextView:Landroid/widget/TextView;

.field private m_helpView:Landroid/widget/ImageView;

.field private m_titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DexListView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listTitle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listEndText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listHelpOnClick:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_titleAppiumID:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_endTextAppiumID:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->inflate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 46
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private inflate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_list_alert_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_titleTextView:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_end_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_endTextView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_help_icon:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListAlertView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_helpView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_helpView:Landroid/widget/ImageView;

    invoke-static {p1, v0, p4}, Lcom/dexcom/cgm/activities/CustomViewUtil;->assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListAlertView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz p5, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p5, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    if-gtz v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 79
    :cond_1
    if-eqz p6, :cond_3

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p6, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    if-gtz v0, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 88
    :cond_3
    return-void
.end method


# virtual methods
.method public setEndText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setIconContentDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListAlertView;->m_helpView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
