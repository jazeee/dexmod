.class final Lcom/flurry/sdk/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 693
    iput-object p2, p0, Lcom/flurry/sdk/cy;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/cy;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/cy;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/cy;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 697
    return-void
.end method
