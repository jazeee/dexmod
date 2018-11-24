.class final Lcom/flurry/sdk/gm;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/sdk/ge;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/flurry/sdk/gm;->b:Lcom/flurry/sdk/ge;

    iput-object p2, p0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flurry/sdk/gm;->b:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/gm;->b:Lcom/flurry/sdk/ge;

    iget-object v1, v1, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error. Block with id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not in progress state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method
