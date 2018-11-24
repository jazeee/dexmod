.class final Lcom/dexcom/cgm/tx/mediator/av;
.super Ljava/lang/Object;
.source "PairingStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/au;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/au;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/av;->a:Lcom/dexcom/cgm/tx/mediator/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/au;B)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/av;-><init>(Lcom/dexcom/cgm/tx/mediator/au;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p2}, Lcom/dexcom/cgm/d/b;->isGenericResponse([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/t;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/internal/healthdata/t;-><init>([B)V

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/sdk/internal/healthdata/t;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/av;->a:Lcom/dexcom/cgm/tx/mediator/au;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/au;->a(Lcom/dexcom/cgm/tx/mediator/au;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an unsuccessful response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/av;->a:Lcom/dexcom/cgm/tx/mediator/au;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/au;->a(Lcom/dexcom/cgm/tx/mediator/au;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairResponseKeepConnectionAlive:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/av;->a:Lcom/dexcom/cgm/tx/mediator/au;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/au;->a(Lcom/dexcom/cgm/tx/mediator/au;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairAuthenticationControlPointDisableIndications:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 107
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->d(Lcom/dexcom/cgm/tx/mediator/at;)V

    goto :goto_0
.end method
