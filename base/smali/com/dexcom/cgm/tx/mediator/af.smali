.class final Lcom/dexcom/cgm/tx/mediator/af;
.super Ljava/lang/Object;
.source "ConnectStrategyFactory.java"


# static fields
.field private static a:Lcom/dexcom/cgm/tx/mediator/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aw;

    invoke-direct {v0}, Lcom/dexcom/cgm/tx/mediator/aw;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/af;->a:Lcom/dexcom/cgm/tx/mediator/aw;

    return-void
.end method

.method public static a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ag;->a:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/mediator/ad;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ba;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/ba;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    .line 54
    :goto_0
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/e;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/af;->a:Lcom/dexcom/cgm/tx/mediator/aw;

    invoke-direct {v0, p1, v1}, Lcom/dexcom/cgm/tx/mediator/e;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/aw;)V

    goto :goto_0

    .line 34
    :pswitch_2
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/au;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/au;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 36
    :pswitch_3
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/az;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/az;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 38
    :pswitch_4
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/a;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/a;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 40
    :pswitch_5
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/c;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/c;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 42
    :pswitch_6
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/y;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/y;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 44
    :pswitch_7
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bf;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/bf;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 46
    :pswitch_8
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/r;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/r;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 48
    :pswitch_9
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/w;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/w;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 50
    :pswitch_a
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/i;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/i;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 52
    :pswitch_b
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bd;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/bd;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 54
    :pswitch_c
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/an;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/mediator/an;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
