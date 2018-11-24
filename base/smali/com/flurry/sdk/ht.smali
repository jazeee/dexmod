.class final Lcom/flurry/sdk/ht;
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
        "Lcom/flurry/sdk/ej;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/hr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hr;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/ht;->a:Lcom/flurry/sdk/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 67
    check-cast p1, Lcom/flurry/sdk/ej;

    .line 1070
    sget-object v0, Lcom/flurry/sdk/hw;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ej;->b$7f90bf0e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1081
    :goto_0
    return-void

    .line 1073
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/hr;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onStartSession for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/flurry/sdk/ht;->a:Lcom/flurry/sdk/hr;

    iget-object v1, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/flurry/sdk/hr;->a(Lcom/flurry/sdk/hr;Landroid/content/Context;)V

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-static {}, Lcom/flurry/sdk/hr;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onEndSession for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/flurry/sdk/ht;->a:Lcom/flurry/sdk/hr;

    iget-object v1, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hr;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1086
    :pswitch_2
    invoke-static {}, Lcom/flurry/sdk/hr;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/flurry/sdk/ht;->a:Lcom/flurry/sdk/hr;

    iget-object v1, p1, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hr;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
