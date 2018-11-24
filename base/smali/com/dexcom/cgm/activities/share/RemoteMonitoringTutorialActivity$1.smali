.class Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;
.super Ljava/lang/Object;
.source "RemoteMonitoringTutorialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->onClickPositive(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->access$002(Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;Z)Z

    .line 45
    return-void
.end method
