.class final Lcom/dexcom/cgm/tx/mediator/t;
.super Ljava/lang/Object;
.source "CgmCommandStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/r;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/r;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/t;->a:Lcom/dexcom/cgm/tx/mediator/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/r;B)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/t;-><init>(Lcom/dexcom/cgm/tx/mediator/r;)V

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

    .line 105
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/t;->a:Lcom/dexcom/cgm/tx/mediator/r;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/r;->a(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/t;->a:Lcom/dexcom/cgm/tx/mediator/r;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/r;->b(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 94
    :sswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/t;->a:Lcom/dexcom/cgm/tx/mediator/r;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/r;->c(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 99
    :sswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/t;->a:Lcom/dexcom/cgm/tx/mediator/r;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/r;->d(Lcom/dexcom/cgm/tx/mediator/r;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x27 -> :sswitch_0
        0x29 -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch
.end method
