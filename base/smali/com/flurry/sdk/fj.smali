.class public final Lcom/flurry/sdk/fj;
.super Lcom/flurry/sdk/fo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/fo;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/fl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/fl",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hj",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hj",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/fo;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/fj;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/fj;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/fj;->d:Lcom/flurry/sdk/hj;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/fj;->e:Lcom/flurry/sdk/hj;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/fj;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/sdk/fj;->s()V

    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/flurry/sdk/fk;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fk;-><init>(Lcom/flurry/sdk/fj;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fs;)V

    .line 91
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fl;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/fj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fl;

    iget-object v1, p0, Lcom/flurry/sdk/fj;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/fl;->a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flurry/sdk/fj;->r()V

    .line 61
    invoke-super {p0}, Lcom/flurry/sdk/fo;->a()V

    .line 62
    return-void
.end method

.method public final a(Lcom/flurry/sdk/fl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fl",
            "<TRequestObjectType;TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/fj;->a:Lcom/flurry/sdk/fl;

    .line 49
    return-void
.end method

.method public final a(Lcom/flurry/sdk/hj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj",
            "<TRequestObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/fj;->d:Lcom/flurry/sdk/hj;

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestObjectType;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/fj;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public final b(Lcom/flurry/sdk/hj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj",
            "<TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flurry/sdk/fj;->e:Lcom/flurry/sdk/hj;

    .line 45
    return-void
.end method
