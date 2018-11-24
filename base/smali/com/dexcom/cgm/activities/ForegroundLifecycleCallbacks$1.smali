.class Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "ForegroundLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->access$000(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->onApplicationCameToForeground()V

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->access$100(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataService;->onAppEnteredForeground()V

    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->access$200(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/j/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/j/c;->onAppEnteredForeground()V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->access$300(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/ChangePasswordHelper;->showPasswordChangedDialogIfNeeded(Landroid/app/Activity;)V

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->access$302(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;Landroid/app/Activity;)Landroid/app/Activity;

    .line 51
    return-void
.end method
