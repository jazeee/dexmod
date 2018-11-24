.class public Lcom/dexcom/cgm/activities/HelpLegalActivity;
.super Landroid/app/Activity;
.source "HelpLegalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClickPP(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.dexcom.com/g5mobile/links/privacy-policy"

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->loadActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "Test"

    const-string v1, "https://www.dexcom.com/g5mobile/links/privacy-policy"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onClickTOU(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_terms_of_use:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.dexcom.com/g5mobile/links/terms-of-use"

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->loadActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "Test"

    const-string v1, "https://www.dexcom.com/g5mobile/links/terms-of-use"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_help_legal:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpLegalActivity;->setContentView(I)V

    .line 25
    return-void
.end method
