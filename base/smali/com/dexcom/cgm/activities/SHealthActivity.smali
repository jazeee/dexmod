.class public Lcom/dexcom/cgm/activities/SHealthActivity;
.super Landroid/app/Activity;
.source "SHealthActivity.java"


# instance fields
.field private final ACQUIRED:I

.field private final NOT_ACQUIRED:I

.field private final NOT_INSTALLED:I

.field private m_doesG5Post:Landroid/widget/TextView;

.field private m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

.field private m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

.field private m_shealthState:Landroid/widget/TextView;

.field private m_toChange:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->ACQUIRED:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->NOT_ACQUIRED:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->NOT_INSTALLED:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusNotInstalled()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusPermissionsNotAcquired()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusPermissionsAcquired()V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 190
    const-string v0, "connectivity"

    .line 191
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 192
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPositiveButton()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_edit_permissions:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setPositiveButtonText(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    new-instance v1, Lcom/dexcom/cgm/activities/SHealthActivity$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SHealthActivity$4;-><init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setOnPositiveClick(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method private statusNotInstalled()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_shealthState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_not_installed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_toChange:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->shealth_to_get:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_doesG5Post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_currently_does_not:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_get_shealth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setPositiveButtonText(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    new-instance v1, Lcom/dexcom/cgm/activities/SHealthActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SHealthActivity$3;-><init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setOnPositiveClick(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private statusPermissionsAcquired()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_shealthState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_toChange:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->shealth_to_change:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_doesG5Post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_three_hour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->resetPositiveButton()V

    .line 167
    return-void
.end method

.method private statusPermissionsNotAcquired()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_shealthState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_toChange:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->shealth_to_change:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_doesG5Post:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_currently_does_not:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->resetPositiveButton()V

    .line 173
    return-void
.end method


# virtual methods
.method public editPermissions()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    new-instance v1, Lcom/dexcom/cgm/activities/SHealthActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SHealthActivity$2;-><init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    invoke-virtual {v0, v1, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->requestPermissions(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method public goToSHealthMarketplace()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v1, "market://details?id=com.sec.android.app.shealth"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public onClickSHealthAndShare(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "TITLE"

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->shealth_and_share:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "URL"

    const-string v2, "https://www.dexcom.com/enable-android-s-health"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SHealthActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_shealth:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->setContentView(I)V

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$id;->shealthState:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_shealthState:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/dexcom/cgm/activities/R$id;->doesG5Post:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_doesG5Post:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/dexcom/cgm/activities/R$id;->shealth_dual:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DualButton;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    .line 45
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toChangeShealth:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_toChange:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    const-string v1, "SHEALTH_STATUS"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusPermissionsAcquired()V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusPermissionsNotAcquired()V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->statusNotInstalled()V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity;->m_sHealthAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    new-instance v1, Lcom/dexcom/cgm/activities/SHealthActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SHealthActivity$1;-><init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->checkPermissions(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;)V

    .line 90
    return-void
.end method
