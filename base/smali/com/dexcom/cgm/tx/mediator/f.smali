.class final Lcom/dexcom/cgm/tx/mediator/f;
.super Ljava/lang/Object;
.source "AuthenticationStrategy.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ak;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/e;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/tx/mediator/e;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/tx/mediator/e;B)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/f;-><init>(Lcom/dexcom/cgm/tx/mediator/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 3

    .prologue
    .line 116
    invoke-static {p2}, Lcom/dexcom/cgm/d/b;->isReplyToChallenge([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/e;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationReceiveReplyToChallenge:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/e;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {p2}, Lcom/dexcom/cgm/d/b;->isAuthenticationStatus([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/e;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationReceiveAuthenticationStatus:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/e;->b(Lcom/dexcom/cgm/tx/mediator/e;Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/f;->a:Lcom/dexcom/cgm/tx/mediator/e;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/e;->a(Lcom/dexcom/cgm/tx/mediator/e;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received unexpected response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method
