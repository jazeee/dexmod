.class public Lcom/dexcom/cgm/activities/ChangePasswordActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ChangePasswordActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->finish()V

    .line 64
    return-void
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 34
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 38
    sget v0, Lcom/dexcom/cgm/activities/R$id;->password_reentry_field:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$id;->login_dual_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/dexcom/cgm/activities/DualButton;

    .line 43
    new-instance v5, Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;

    invoke-direct {v5, p0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity$1;-><init>(Lcom/dexcom/cgm/activities/ChangePasswordActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/LoginActivity;->doLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/dexcom/cgm/activities/DualButton;Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_change_password:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->setContentView(I)V

    .line 25
    sget v0, Lcom/dexcom/cgm/activities/R$id;->password_reentry_username_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method
