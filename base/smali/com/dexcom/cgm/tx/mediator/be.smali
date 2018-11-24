.class final Lcom/dexcom/cgm/tx/mediator/be;
.super Ljava/lang/Object;
.source "TransmitterBatteryStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/bd;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/bd;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/be;->a:Lcom/dexcom/cgm/tx/mediator/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/bd;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/be;-><init>(Lcom/dexcom/cgm/tx/mediator/bd;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/be;->a:Lcom/dexcom/cgm/tx/mediator/bd;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bd;->access$100(Lcom/dexcom/cgm/tx/mediator/bd;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
