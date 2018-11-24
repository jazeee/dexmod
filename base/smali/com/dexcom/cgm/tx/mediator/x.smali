.class final Lcom/dexcom/cgm/tx/mediator/x;
.super Ljava/lang/Object;
.source "CgmQueryStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/w;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/w;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/x;->a:Lcom/dexcom/cgm/tx/mediator/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/w;B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/x;-><init>(Lcom/dexcom/cgm/tx/mediator/w;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 72
    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/x;->a:Lcom/dexcom/cgm/tx/mediator/w;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/w;->a(Lcom/dexcom/cgm/tx/mediator/w;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/x;->a:Lcom/dexcom/cgm/tx/mediator/w;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/w;->b(Lcom/dexcom/cgm/tx/mediator/w;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
