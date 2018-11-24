.class public Lcom/dexcom/cgm/activities/DexDialogBuilder;
.super Ljava/lang/Object;
.source "DexDialogBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dialogDisplaying:Z

.field private m_buttonStub:Landroid/view/ViewStub;

.field private m_buttonView:Landroid/view/View;

.field private m_cancelable:Z

.field private m_content:Landroid/view/ViewGroup;

.field private m_contentStub:Landroid/view/ViewStub;

.field private m_context:Landroid/content/Context;

.field private final m_dexDialog:Landroid/app/Dialog;

.field private m_isShowingAlert:Z

.field private m_loggingText:Ljava/lang/String;

.field private m_timeAlertWasShown:Lcom/dexcom/cgm/k/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    .line 54
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->dialogDisplaying:Z

    .line 55
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_context:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder$1;-><init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->customContent:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_contentStub:Landroid/view/ViewStub;

    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dualButtonLayout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonStub:Landroid/view/ViewStub;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/DexDialogBuilder;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->dialogDisplaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_timeAlertWasShown:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_isShowingAlert:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/DexDialogBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_loggingText:Ljava/lang/String;

    return-object v0
.end method

.method private inflateButtons()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 164
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->isButtonsInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonView:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->actualPositive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonView:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->actualNegative:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

.method private inflateContentLayout(I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_contentStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_contentStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    .line 182
    :cond_0
    return-void
.end method

.method private isButtonsInflated()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p3    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_buttonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    if-nez p3, :cond_0

    .line 144
    new-instance p3, Lcom/dexcom/cgm/activities/DexDialogBuilder$3;

    invoke-direct {p3, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder$3;-><init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;)V

    .line 154
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;

    invoke-direct {v1, p0, p3}, Lcom/dexcom/cgm/activities/DexDialogBuilder$DismissOnClickListener;-><init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method


# virtual methods
.method public currentlyVisible()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->dialogDisplaying:Z

    return v0
.end method

.method public setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    return-object p0
.end method

.method public setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateContentLayout(I)V

    .line 210
    return-object p0
.end method

.method public setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateContentLayout(I)V

    .line 216
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    invoke-interface {p2, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;->onLayout(Landroid/view/View;)V

    .line 217
    return-object p0
.end method

.method public setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 2

    .prologue
    .line 186
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dex_dialog_text:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateContentLayout(I)V

    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 2

    .prologue
    .line 194
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dex_dialog_text:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateContentLayout(I)V

    .line 195
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1

    .prologue
    .line 202
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dex_dialog_content:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateContentLayout(I)V

    .line 203
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    return-object p0
.end method

.method public setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_dialog_dismiss:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder$2;-><init>(Lcom/dexcom/cgm/activities/DexDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :goto_0
    return-object p0

    .line 123
    :cond_0
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->dialogDisplaying:Z

    .line 124
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_loggingText:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateButtons()V

    .line 101
    sget v0, Lcom/dexcom/cgm/activities/R$id;->actualNegative:I

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setupButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 102
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->inflateButtons()V

    .line 89
    sget v0, Lcom/dexcom/cgm/activities/R$id;->actualPositive:I

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setupButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 90
    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->showDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public showAlert()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->showDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected showDialog(Z)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_context:Landroid/content/Context;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 229
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_isShowingAlert:Z

    .line 230
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_timeAlertWasShown:Lcom/dexcom/cgm/k/j;

    .line 231
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_loggingText:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logDialogAppearing(Ljava/lang/String;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    return-object v0

    .line 235
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->TAG:Ljava/lang/String;

    const-string v1, "Activity changed, not displaying dialog"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogWithoutActivitySwitchCheck()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 245
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexDialogBuilder;->m_dexDialog:Landroid/app/Dialog;

    return-object v0
.end method
