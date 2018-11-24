.class public Lcom/dexcom/cgm/activities/DualButton;
.super Landroid/widget/LinearLayout;
.source "DualButton.java"


# instance fields
.field private m_hideNegative:Z

.field private m_noNegative:Z

.field private m_onClickNegative:Ljava/lang/String;

.field private m_onClickPositive:Ljava/lang/String;

.field private m_textNegative:Ljava/lang/String;

.field private m_textPositive:Ljava/lang/String;

.field private negativeButton:Landroid/widget/Button;

.field private positiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/DualButton;->m_noNegative:Z

    .line 24
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/DualButton;->m_hideNegative:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DualButton:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DualButton_textPositive:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textPositive:Ljava/lang/String;

    .line 39
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DualButton_textNegative:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textNegative:Ljava/lang/String;

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DualButton_onClickPositive:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_onClickPositive:Ljava/lang/String;

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DualButton_onClickNegative:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_onClickNegative:Ljava/lang/String;

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DualButton_hideNegative:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_hideNegative:Z

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textNegative:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textNegative:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_onClickNegative:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textNegative:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_noNegative:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/DualButton;->inflate(Landroid/content/Context;)V

    .line 57
    return-void

    .line 53
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dual_button_control:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    sget v0, Lcom/dexcom/cgm/activities/R$id;->actualPositive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textPositive:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/DualButton;->m_onClickPositive:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/dexcom/cgm/activities/CustomViewUtil;->assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->actualNegative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DualButton;->m_textNegative:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_noNegative:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/DualButton;->m_hideNegative:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DualButton;->m_onClickNegative:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setNegativeButtonText(I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DualButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public setOnNegativeClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public setOnPositiveClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DualButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setPositiveClickState(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DualButton;->positiveButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 88
    return-void
.end method
