.class public Lcom/dexcom/cgm/activities/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 86
    const-string v0, "connectivity"

    .line 87
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClickNavigate(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 33
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_whats_new:I

    if-ne v1, v0, :cond_0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_setup_wizard:I

    if-ne v1, v0, :cond_2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/NonInitialSetupWizardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_safety_statements:I

    if-ne v1, v0, :cond_3

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/HelpSafetyStatementsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_3
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_about:I

    if-ne v1, v0, :cond_4

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/HelpAboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_4
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_user_guide:I

    if-ne v1, v0, :cond_6

    .line 51
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "TITLE"

    sget v2, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_40:I

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/ifu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_5
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 64
    :cond_6
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_videos:I

    if-ne v1, v0, :cond_7

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/HelpVideosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_7
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_contact_dexcom:I

    if-ne v1, v0, :cond_8

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :cond_8
    sget v1, Lcom/dexcom/cgm/activities/R$id;->help_faq:I

    if-ne v1, v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 80
    :cond_9
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_help:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpActivity;->setContentView(I)V

    .line 27
    return-void
.end method
