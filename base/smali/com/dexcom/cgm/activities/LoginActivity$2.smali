.class final Lcom/dexcom/cgm/activities/LoginActivity$2;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dualButton:Lcom/dexcom/cgm/activities/DualButton;

.field final synthetic val$onSuccessfulLogin:Ljava/lang/Runnable;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$progressSpinner:Landroid/view/View;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DualButton;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$dualButton:Lcom/dexcom/cgm/activities/DualButton;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$progressSpinner:Landroid/view/View;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$onSuccessfulLogin:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    .line 163
    invoke-static {v3}, Lcom/dexcom/cgm/activities/LoginActivity;->access$302(Z)Z

    .line 164
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 169
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$password:Ljava/lang/String;

    .line 171
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/share/ShareService;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/dexcom/cgm/activities/LoginActivity$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/LoginActivity$2$1;-><init>(Lcom/dexcom/cgm/activities/LoginActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateAccountNotFoundWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticatePasswordInvalidWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateMaxAttemptsExceededWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_nonexistent_username:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    .line 206
    :goto_1
    invoke-static {v3}, Lcom/dexcom/cgm/activities/LoginActivity;->access$302(Z)Z

    .line 207
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_incorrect_password:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    goto :goto_1

    .line 196
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_login_screen_error_lockout:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    goto :goto_1

    .line 200
    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    goto :goto_1

    .line 204
    :catch_4
    move-exception v0

    :goto_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/LoginActivity;->access$200(Landroid/app/Activity;I)V

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$dualButton:Lcom/dexcom/cgm/activities/DualButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setPositiveClickState(Ljava/lang/Boolean;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$progressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/LoginActivity$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$dualButton:Lcom/dexcom/cgm/activities/DualButton;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DualButton;->setPositiveClickState(Ljava/lang/Boolean;)V

    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LoginActivity$2;->val$progressSpinner:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method
