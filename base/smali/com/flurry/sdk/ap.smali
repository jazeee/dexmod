.class public Lcom/flurry/sdk/ap;
.super Lcom/flurry/sdk/fu;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/bg;

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:I

.field private final i:Lcom/flurry/sdk/br;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ap;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/br;Ljava/util/Map;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/flurry/sdk/br;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/fu;-><init>()V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/flurry/sdk/ap;->d:I

    .line 25
    const/16 v0, 0x7530

    iput v0, p0, Lcom/flurry/sdk/ap;->e:I

    .line 46
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p5, p6}, Lcom/flurry/sdk/ap;->a(J)V

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/ap;->a_()V

    .line 51
    iput-object p1, p0, Lcom/flurry/sdk/ap;->o:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/flurry/sdk/ap;->f:J

    .line 55
    invoke-virtual {p0, p7}, Lcom/flurry/sdk/ap;->c(I)V

    .line 56
    iput p7, p0, Lcom/flurry/sdk/ap;->g:I

    .line 57
    iput p8, p0, Lcom/flurry/sdk/ap;->h:I

    .line 58
    iput-object p9, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/br;

    .line 59
    iput-object p10, p0, Lcom/flurry/sdk/ap;->j:Ljava/util/Map;

    .line 60
    iput p11, p0, Lcom/flurry/sdk/ap;->l:I

    .line 61
    iput p12, p0, Lcom/flurry/sdk/ap;->m:I

    .line 62
    iput-object p13, p0, Lcom/flurry/sdk/ap;->n:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/flurry/sdk/ap;->k:J

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ap;->a:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ap;J)J
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/flurry/sdk/ap;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ap;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ap;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/flurry/sdk/ap;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ap;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ap;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ap;->g:I

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ap;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ap;->h:I

    return v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ap;)Lcom/flurry/sdk/br;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/br;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/ap;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ap;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ap;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->k:J

    return-wide v0
.end method

.method static synthetic h(Lcom/flurry/sdk/ap;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ap;->l:I

    return v0
.end method

.method static synthetic i(Lcom/flurry/sdk/ap;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/flurry/sdk/ap;->m:I

    return v0
.end method

.method static synthetic j(Lcom/flurry/sdk/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/ap;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/ap;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->p:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/at;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public a(Lcom/flurry/sdk/bg;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/flurry/sdk/ap;->b:Lcom/flurry/sdk/bg;

    .line 137
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/flurry/sdk/ap;->p:Z

    .line 132
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/flurry/sdk/ap;->h:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Lcom/flurry/sdk/fu;->a_()V

    .line 77
    invoke-super {p0}, Lcom/flurry/sdk/fu;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->k:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ap;->k:J

    .line 79
    :cond_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->b:Lcom/flurry/sdk/bg;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/flurry/sdk/ap;->r()I

    move-result v0

    iget v1, p0, Lcom/flurry/sdk/ap;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->f:J

    return-wide v0
.end method

.method public f()Lcom/flurry/sdk/br;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/br;

    return-object v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->k:J

    return-wide v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/ap;->j:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/ap;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/flurry/sdk/ap;->l:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/flurry/sdk/ap;->m:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/sdk/ap;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/ap;->b:Lcom/flurry/sdk/bg;

    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->p:Z

    return v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/at;

    .line 141
    iput-object p0, v0, Lcom/flurry/sdk/at;->l:Lcom/flurry/sdk/ap;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
