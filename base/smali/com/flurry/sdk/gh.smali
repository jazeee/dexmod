.class final Lcom/flurry/sdk/gh;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:[B

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/flurry/sdk/ge;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ge;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/flurry/sdk/gh;->d:Lcom/flurry/sdk/ge;

    iput-object p2, p0, Lcom/flurry/sdk/gh;->a:[B

    iput-object p3, p0, Lcom/flurry/sdk/gh;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/gh;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/gh;->d:Lcom/flurry/sdk/ge;

    iget-object v1, p0, Lcom/flurry/sdk/gh;->a:[B

    iget-object v2, p0, Lcom/flurry/sdk/gh;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/gh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ge;->d([BLjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
