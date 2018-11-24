.class public Lcom/dexcom/cgm/activities/HelpAboutActivity;
.super Landroid/app/Activity;
.source "HelpAboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private loadActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onClickLegal(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/HelpLegalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public onClickSystemCompatibility(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_70:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.dexcom.com/android-compatibility"

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->loadActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "Test"

    const-string v1, "http://www.dexcom.com/android-compatibility"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_help_about:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->setContentView(I)V

    .line 29
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_about_version:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpAboutActivity;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 30
    return-void
.end method
