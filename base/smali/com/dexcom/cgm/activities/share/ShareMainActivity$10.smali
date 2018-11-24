.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/share/ShareService;->listFollowersFromServer()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$202(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Ljava/util/List;)Ljava/util/List;

    .line 463
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->reportAnyChangesToFlurry()V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$1000(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    .line 479
    return-void

    .line 467
    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/share/ShareService;->listFollowers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$202(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Ljava/util/List;)Ljava/util/List;

    .line 468
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 473
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/share/ShareService;->listFollowers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$202(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Ljava/util/List;)Ljava/util/List;

    .line 474
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 467
    :catch_2
    move-exception v0

    goto :goto_1
.end method
