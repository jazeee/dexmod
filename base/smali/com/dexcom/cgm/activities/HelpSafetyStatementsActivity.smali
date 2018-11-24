.class public Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HelpSafetyStatementsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 70
    const-string v0, "connectivity"

    .line 71
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onClickCGMSafetyStatement(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_47:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.dexcom.com/g5mobile/links/safety-information"

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->loadActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "Test"

    const-string v1, "https://www.dexcom.com/g5mobile/links/safety-information"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method public onClickShareSafetyStatement(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_46:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.dexcom.com/g5mobile/links/share-safety-information"

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->loadActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "Test"

    const-string v1, "https://www.dexcom.com/g5mobile/links/share-safety-information"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_help_safety_statements:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;->setContentView(I)V

    .line 27
    return-void
.end method
