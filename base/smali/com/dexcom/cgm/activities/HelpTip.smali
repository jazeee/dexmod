.class public Lcom/dexcom/cgm/activities/HelpTip;
.super Landroid/widget/LinearLayout;
.source "HelpTip.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private m_iconContentDesc:Ljava/lang/String;

.field private m_onClick:Ljava/lang/String;

.field private m_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpTip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DexIcons:[I

    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 42
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_text:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_onClick:Ljava/lang/String;

    .line 45
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexIcons_iconContentDescription:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_iconContentDesc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/HelpTip;->inflate(Landroid/content/Context;)V

    .line 53
    return-void

    .line 43
    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 32
    nop

    :array_0
    .array-data 4
        0x101014f
        0x101026f
    .end array-data
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->help_tip:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_tip_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_tip_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->imageView:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_onClick:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_iconContentDesc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/HelpTip;->m_iconContentDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpTipIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/HelpTip;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method
