.class Lcom/dexcom/cgm/share/ShareServiceComponent$1;
.super Ljava/lang/Object;
.source "ShareServiceComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

.field final synthetic val$scheduleEnabled:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/ShareServiceComponent;Z)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    iput-boolean p2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->val$scheduleEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 168
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->NoDataAlert:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 173
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->val$scheduleEnabled:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->UrgentLowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->LowAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 177
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->HighAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 178
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->RiseRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$1;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->FallRateAlertScheduled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    .line 181
    :cond_0
    return-void
.end method
