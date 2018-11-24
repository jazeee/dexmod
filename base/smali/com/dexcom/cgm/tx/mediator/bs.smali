.class final Lcom/dexcom/cgm/tx/mediator/bs;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bs;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bs;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bs;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bs;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bs;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bs;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v1, v1, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
