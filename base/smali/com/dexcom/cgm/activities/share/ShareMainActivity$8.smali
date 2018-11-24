.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

.field final synthetic val$newSharingStatus:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->val$newSharingStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$600(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    .line 320
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->val$newSharingStatus:Z

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/ShareService;->setSharingEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->onRefresh()V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 335
    :goto_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$600(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    .line 336
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$700(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    .line 338
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$800(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_2

    .line 326
    :catch_2
    move-exception v0

    goto :goto_1
.end method
