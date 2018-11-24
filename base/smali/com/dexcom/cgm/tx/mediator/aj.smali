.class final Lcom/dexcom/cgm/tx/mediator/aj;
.super Ljava/lang/Object;
.source "ControlPointGuard.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/at;

.field private final b:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final c:Lcom/dexcom/cgm/tx/mediator/ak;

.field private d:Lcom/dexcom/cgm/tx/mediator/ad;

.field private e:Lcom/dexcom/cgm/tx/mediator/ad;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:[B


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->d:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 17
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->e:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 18
    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->f:Z

    .line 19
    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->g:Z

    .line 20
    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->a:Lcom/dexcom/cgm/tx/mediator/at;

    .line 26
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 27
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/aj;->c:Lcom/dexcom/cgm/tx/mediator/ak;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    .line 72
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->f:Z

    .line 73
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->g:Z

    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->d:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 75
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/aj;->e:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 76
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Control Point not active for indicate/notify: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->a:Lcom/dexcom/cgm/tx/mediator/at;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->e:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->g:Z

    .line 65
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/aj;->i:[B

    goto :goto_0
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Control Point not active for write: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " payload= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->a:Lcom/dexcom/cgm/tx/mediator/at;

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->d:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->f:Z

    goto :goto_0
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->b:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Not able to process"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 93
    :goto_1
    if-eqz v0, :cond_0

    .line 1080
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->h:Z

    .line 1081
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->f:Z

    .line 1082
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->g:Z

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aj;->c:Lcom/dexcom/cgm/tx/mediator/ak;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aj;->i:[B

    invoke-interface {v0, p1, v1}, Lcom/dexcom/cgm/tx/mediator/ak;->a(Lcom/dexcom/cgm/tx/mediator/k;[B)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1032
    goto :goto_1
.end method
