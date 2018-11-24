.class final Lcom/dexcom/cgm/tx/mediator/bg;
.super Ljava/lang/Object;
.source "TransmitterInfoStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/bf;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/bf;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bg;->a:Lcom/dexcom/cgm/tx/mediator/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/bf;B)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bg;-><init>(Lcom/dexcom/cgm/tx/mediator/bf;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 80
    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bg;->a:Lcom/dexcom/cgm/tx/mediator/bf;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bf;->a(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bg;->a:Lcom/dexcom/cgm/tx/mediator/bf;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bf;->b(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 94
    :sswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bg;->a:Lcom/dexcom/cgm/tx/mediator/bf;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bf;->c(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x4b -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method
