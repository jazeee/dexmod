.class final Lcom/dexcom/cgm/tx/mediator/bk;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/bi;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/bi;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/bi;B)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bk;-><init>(Lcom/dexcom/cgm/tx/mediator/bi;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 248
    const-string v0, "TransmitterBLE"

    const-string v1, "Service Connected"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    check-cast p2, Lcom/dexcom/cgm/tx/mediator/m;

    invoke-static {v0, p2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$102(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/tx/mediator/m;)Lcom/dexcom/cgm/tx/mediator/m;

    .line 250
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$100(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/m;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$200(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/bl;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v3}, Lcom/dexcom/cgm/tx/mediator/bi;->access$400(Lcom/dexcom/cgm/tx/mediator/bi;)I

    move-result v3

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v4}, Lcom/dexcom/cgm/tx/mediator/bi;->access$500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/tx/mediator/m;->startCommunication(Lcom/dexcom/cgm/tx/mediator/ah;Lcom/dexcom/cgm/tx/mediator/as;ILandroid/app/Notification;)V

    .line 251
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->evServiceCreated()V

    .line 252
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$602(Lcom/dexcom/cgm/tx/mediator/bi;Z)Z

    .line 253
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 258
    const-string v0, "TransmitterBLE"

    const-string v1, "Service Disconnected"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->evServiceDestroyed()V

    .line 260
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$102(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/tx/mediator/m;)Lcom/dexcom/cgm/tx/mediator/m;

    .line 261
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bk;->a:Lcom/dexcom/cgm/tx/mediator/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$602(Lcom/dexcom/cgm/tx/mediator/bi;Z)Z

    .line 262
    return-void
.end method
