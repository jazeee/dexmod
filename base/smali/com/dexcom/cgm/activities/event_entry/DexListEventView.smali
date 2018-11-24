.class public Lcom/dexcom/cgm/activities/event_entry/DexListEventView;
.super Landroid/widget/LinearLayout;
.source "DexListEventView.java"


# instance fields
.field private m_checkBox:I

.field private m_checkboxOnClick:Ljava/lang/String;

.field private m_eventEntryText:Ljava/lang/String;

.field private m_eventText:Ljava/lang/String;

.field private m_isChecked:Z

.field private m_startIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_isChecked:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DexListView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 39
    :try_start_0
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listTitle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventText:Ljava/lang/String;

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listStartIcon:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_startIcon:I

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listEndArrow:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_checkBox:I

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listCheckboxOnClick:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_checkboxOnClick:Ljava/lang/String;

    .line 43
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListView_listEndText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventEntryText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->inflate(Landroid/content/Context;)V

    .line 50
    return-void

    .line 47
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_list_event_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_startIcon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_checkBox:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_checkboxOnClick:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/dexcom/cgm/activities/CustomViewUtil;->assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventEntryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_isChecked:Z

    return v0
.end method

.method public setChecked()V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_isChecked:Z

    .line 81
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEventEntryText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventEntryText:Ljava/lang/String;

    .line 108
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_eventEntryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public setUnchecked()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->m_isChecked:Z

    .line 98
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_check_box:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_entry_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/DexListEventView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-void
.end method
