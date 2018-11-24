.class public Lcom/dexcom/cgm/activities/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static m_loggingIn:Z


# instance fields
.field private m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/LoginActivity;->m_loggingIn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/LoginActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->onSuccessfulLogin()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity;->performLocalValidation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity;->showDialogWithString(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/dexcom/cgm/activities/LoginActivity;->m_loggingIn:Z

    return p0
.end method

.method private automaticallyEnterUsernameIfNeeded()V
    .locals 3

    .prologue
    .line 52
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_username_field:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 53
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 62
    :goto_1
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static doLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/dexcom/cgm/activities/DualButton;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/activities/LoginActivity;->m_loggingIn:Z

    .line 147
    new-instance v0, Lcom/dexcom/cgm/activities/LoginActivity$2;

    move-object v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/activities/LoginActivity$2;-><init>(Lcom/dexcom/cgm/activities/DualButton;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 219
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method private focusOnTextField()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_username_field:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 73
    sget v1, Lcom/dexcom/cgm/activities/R$id;->login_password_field:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 75
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v2

    .line 76
    :goto_0
    if-eqz v4, :cond_2

    .line 89
    :goto_1
    return-void

    :cond_1
    move v4, v3

    .line 75
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    :goto_2
    if-nez v2, :cond_4

    .line 83
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    :cond_3
    move v2, v3

    .line 79
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_password_field:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->getTextFromTextField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextFromTextField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_username_field:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->getTextFromTextField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isUsernameValid(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    invoke-static {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->stringIsOnlyAlphanumeric(Ljava/lang/String;)Z

    move-result v5

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 292
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_1

    move v3, v1

    .line 293
    :goto_1
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    .line 295
    :goto_2
    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_3
    return v1

    :cond_0
    move v0, v2

    .line 291
    goto :goto_0

    :cond_1
    move v3, v2

    .line 292
    goto :goto_1

    :cond_2
    move v4, v2

    .line 293
    goto :goto_2

    :cond_3
    move v1, v2

    .line 295
    goto :goto_3
.end method

.method private onSuccessfulLogin()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 226
    new-instance v1, Lcom/dexcom/cgm/activities/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/LoginActivity$3;-><init>(Lcom/dexcom/cgm/activities/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->setOnToastDisappeared(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast()V

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/LoginActivity;->m_loggingIn:Z

    .line 252
    return-void
.end method

.method private openURL(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "entryFrom"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method private static performLocalValidation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_blank_username:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 271
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_blank_password:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_nonexistent_username:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static showDialogWithString(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lcom/dexcom/cgm/activities/LoginActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity$4;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method private static stringIsOnlyAlphanumeric(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-char v6, v4, v3

    .line 304
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v1

    .line 302
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :cond_1
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onClickLogin(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 120
    sget-boolean v0, Lcom/dexcom/cgm/activities/LoginActivity;->m_loggingIn:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/LoginActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/LoginActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    new-instance v5, Lcom/dexcom/cgm/activities/LoginActivity$1;

    invoke-direct {v5, p0}, Lcom/dexcom/cgm/activities/LoginActivity$1;-><init>(Lcom/dexcom/cgm/activities/LoginActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/LoginActivity;->doLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/dexcom/cgm/activities/DualButton;Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onClickSignUp(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "https://www.dexcom.com/g5mobile/links/signup"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->openURL(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_login:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_dual_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DualButton;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity;->m_dualButton:Lcom/dexcom/cgm/activities/DualButton;

    .line 38
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 39
    return-void
.end method

.method public onForgotPassword(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    const-string v0, "https://www.dexcom.com/g5mobile/links/forgot-password"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->openURL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onForgotUsername(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "https://www.dexcom.com/g5mobile/links/forgot-username"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->openURL(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->automaticallyEnterUsernameIfNeeded()V

    .line 47
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LoginActivity;->focusOnTextField()V

    .line 48
    return-void
.end method
