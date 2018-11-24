.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

.field final synthetic val$appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

.field final synthetic val$locale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->val$appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$800$32e1a9(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->val$appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->val$locale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    .line 376
    invoke-static {v3}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$700(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/appcompatability/a;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/a/a/a;->performAppCompatabilityServerIO(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/a;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/appcompatability/a/b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/appcompatability/a/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/appcompatability/a/d; {:try_start_0 .. :try_end_0} :catch_2

    .line 391
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0, v4}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$902(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Z)Z

    .line 381
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1000(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    .line 382
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1100(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;I)V

    goto :goto_0

    .line 386
    :catch_1
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0, v4}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$902(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Z)Z

    .line 387
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1000(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    .line 388
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->access$1100(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;I)V

    goto :goto_0

    .line 386
    :catch_2
    move-exception v0

    goto :goto_1
.end method
