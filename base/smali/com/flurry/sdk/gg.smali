.class final Lcom/flurry/sdk/gg;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/sdk/ge;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/ge;

    iput-object p2, p0, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/ge;

    new-instance v1, Lcom/flurry/sdk/gr;

    iget-object v2, p0, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/gr;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    .line 68
    return-void
.end method
