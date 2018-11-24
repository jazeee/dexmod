.class public Lcom/dexcom/cgm/activities/DexListNavView;
.super Landroid/widget/LinearLayout;
.source "DexListNavView.java"


# instance fields
.field private m_endTextView:Landroid/widget/TextView;

.field private final m_isOnClickAssigned:Z

.field private m_startIconView:Landroid/widget/ImageView;

.field private m_titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/dexcom/cgm/activities/R$styleable;->DexListView:[I

    invoke-virtual {v2, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 39
    :try_start_0
    sget v2, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listTitle:I

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v3, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listEndText:I

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    sget v4, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listStartIcon:I

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 42
    sget v5, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_titleAppiumID:I

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    sget v6, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_endTextAppiumID:I

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 47
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    new-array v9, v0, [I

    const v10, 0x101026f

    aput v10, v9, v1

    .line 51
    invoke-virtual {v8, p2, v9, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 54
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 55
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_isOnClickAssigned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/activities/DexListNavView;->inflate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 47
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0

    .line 59
    :catchall_1
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private inflate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_list_navigation_view:I

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_titleTextView:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_end_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_left_icon:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    .line 82
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    if-eqz p4, :cond_2

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListNavView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :goto_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_isOnClickAssigned:Z

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListNavView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz p5, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p5, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 112
    if-gtz v1, :cond_3

    .line 114
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

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 118
    :cond_4
    if-eqz p6, :cond_6

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, p6, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    if-gtz v0, :cond_5

    .line 123
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

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 127
    :cond_6
    return-void
.end method


# virtual methods
.method public setDisableAttributes(Z)V
    .locals 4

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListNavView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 137
    const/high16 v0, 0x3e800000    # 0.25f

    move v2, v0

    move v3, v1

    .line 144
    :goto_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_list_left_icon:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 148
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListNavView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    move v2, v0

    move v3, v1

    goto :goto_0
.end method

.method public setEndImage(I)V
    .locals 2

    .prologue
    .line 163
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_end_image:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    return-void
.end method

.method public setEndText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setEndTextColor(I)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_endTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexListNavView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    return-void
.end method

.method public setStartImage(I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexListNavView;->m_startIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    return-void
.end method
