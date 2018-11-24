.class final Lcom/dexcom/cgm/tx/mediator/ca;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ca;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ca;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    .line 446
    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evInterval()V

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method
