.class public final Lcom/flurry/sdk/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/util/Map;
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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
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

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/location/Location;

.field private o:I

.field private p:B

.field private q:Ljava/lang/Long;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bx;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcom/flurry/sdk/ci;->b:J

    .line 13
    iput-wide v2, p0, Lcom/flurry/sdk/ci;->c:J

    .line 14
    iput-wide v2, p0, Lcom/flurry/sdk/ci;->d:J

    .line 24
    iput v0, p0, Lcom/flurry/sdk/ci;->k:I

    .line 25
    iput v1, p0, Lcom/flurry/sdk/ci;->l:I

    .line 28
    iput v0, p0, Lcom/flurry/sdk/ci;->o:I

    .line 29
    iput-byte v0, p0, Lcom/flurry/sdk/ci;->p:B

    .line 34
    iput-boolean v1, p0, Lcom/flurry/sdk/ci;->t:Z

    .line 36
    iput v0, p0, Lcom/flurry/sdk/ci;->u:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(B)V
    .locals 0

    .prologue
    .line 163
    iput-byte p1, p0, Lcom/flurry/sdk/ci;->p:B

    .line 164
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/flurry/sdk/ci;->k:I

    .line 124
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/flurry/sdk/ci;->b:J

    .line 52
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/flurry/sdk/ci;->n:Landroid/location/Location;

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/flurry/sdk/ci;->q:Ljava/lang/Long;

    .line 172
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/flurry/sdk/ci;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/by;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/flurry/sdk/ci;->s:Ljava/util/List;

    .line 188
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/flurry/sdk/ci;->e:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/flurry/sdk/ci;->t:Z

    .line 196
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->b:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/flurry/sdk/ci;->l:I

    .line 132
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/flurry/sdk/ci;->c:J

    .line 60
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flurry/sdk/ci;->f:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lcom/flurry/sdk/ci;->v:Ljava/util/List;

    .line 212
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/sdk/ci;->h:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->c:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/flurry/sdk/ci;->o:I

    .line 156
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/flurry/sdk/ci;->d:J

    .line 68
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flurry/sdk/ci;->g:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcom/flurry/sdk/ci;->r:Ljava/util/Map;

    .line 180
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/flurry/sdk/ci;->d:J

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/flurry/sdk/ci;->u:I

    .line 204
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/flurry/sdk/ci;->i:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final e()Ljava/util/Map;
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
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/ci;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flurry/sdk/ci;->j:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/ci;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flurry/sdk/ci;->m:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/ci;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/Map;
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
    .line 103
    iget-object v0, p0, Lcom/flurry/sdk/ci;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/ci;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/ci;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/flurry/sdk/ci;->k:I

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/flurry/sdk/ci;->l:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/ci;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Landroid/location/Location;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flurry/sdk/ci;->n:Landroid/location/Location;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/flurry/sdk/ci;->o:I

    return v0
.end method

.method public final p()B
    .locals 1

    .prologue
    .line 167
    iget-byte v0, p0, Lcom/flurry/sdk/ci;->p:B

    return v0
.end method

.method public final q()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/ci;->q:Ljava/lang/Long;

    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/ci;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/by;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/sdk/ci;->s:Ljava/util/List;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/flurry/sdk/ci;->t:Z

    return v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/flurry/sdk/ci;->u:I

    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/ci;->v:Ljava/util/List;

    return-object v0
.end method
