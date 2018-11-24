.class final Lcom/dexcom/cgm/tx/mediator/d;
.super Ljava/lang/Object;
.source "AuthenticationKeyExchangeStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/c;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/c;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/d;->a:Lcom/dexcom/cgm/tx/mediator/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/c;B)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/d;-><init>(Lcom/dexcom/cgm/tx/mediator/c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 1

    .prologue
    .line 82
    invoke-static {p2}, Lcom/dexcom/cgm/tx/a/j;->getResponseCode([B)B

    move-result v0

    .line 83
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/d;->a:Lcom/dexcom/cgm/tx/mediator/c;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/c;->a(Lcom/dexcom/cgm/tx/mediator/c;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
