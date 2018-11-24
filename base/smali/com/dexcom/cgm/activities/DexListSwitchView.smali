.class public Lcom/dexcom/cgm/activities/DexListSwitchView;
.super Landroid/widget/LinearLayout;
.source "DexListSwitchView.java"


# instance fields
.field private m_endTextView:Landroid/widget/TextView;

.field private m_switch:Landroid/widget/Switch;

.field private m_titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DexListView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 39
    :try_start_0
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listTitle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listEndText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_titleAppiumID:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_endTextAppiumID:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_switchAppiumID:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->inflate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/dexcom/cgm/activities/DexListSwitchView$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexListSwitchView$1;-><init>(Lcom/dexcom/cgm/activities/DexListSwitchView;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 47
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
    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_list_switch_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_titleTextView:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_end_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/dexcom/cgm/activities/DexListSwitchView$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexListSwitchView$2;-><init>(Lcom/dexcom/cgm/activities/DexListSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz p4, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p4, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 92
    if-gtz v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 98
    :cond_1
    if-eqz p5, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p5, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 101
    if-gtz v1, :cond_2

    .line 103
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

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 107
    :cond_3
    if-eqz p6, :cond_5

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p6, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    if-gtz v0, :cond_4

    .line 112
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

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setId(I)V

    .line 117
    :cond_5
    return-void
.end method


# virtual methods
.method public isSwitchChecked()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setEndText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_endTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    return-void
.end method

.method public setSwitchChecked(Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListSwitchView;->m_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    return-void
.end method
