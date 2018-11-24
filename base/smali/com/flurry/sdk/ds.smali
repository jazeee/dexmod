.class final Lcom/flurry/sdk/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/er",
        "<",
        "Lcom/flurry/sdk/ie;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/dr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dr;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 4

    .prologue
    .line 63
    .line 1066
    iget-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/dr;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1067
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/dr;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/flurry/sdk/ds;->a:Lcom/flurry/sdk/dr;

    invoke-static {v0}, Lcom/flurry/sdk/dr;->b(Lcom/flurry/sdk/dr;)V

    .line 63
    :cond_0
    return-void
.end method
