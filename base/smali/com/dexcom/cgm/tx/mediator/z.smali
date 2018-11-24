.class final Lcom/dexcom/cgm/tx/mediator/z;
.super Ljava/lang/Object;
.source "CgmTimeAndSignatureStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/y;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/y;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/z;->a:Lcom/dexcom/cgm/tx/mediator/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/y;B)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/z;-><init>(Lcom/dexcom/cgm/tx/mediator/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/z;->a:Lcom/dexcom/cgm/tx/mediator/y;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/y;->a(Lcom/dexcom/cgm/tx/mediator/y;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
