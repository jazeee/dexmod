.class public final Lcom/flurry/sdk/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hj",
        "<",
        "Lcom/flurry/sdk/at;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/flurry/sdk/at;
    .locals 20

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v2, 0x0

    .line 168
    :goto_0
    return-object v2

    .line 139
    :cond_0
    new-instance v2, Lcom/flurry/sdk/aw;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/flurry/sdk/aw;-><init>(Lcom/flurry/sdk/au;Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 147
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 148
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 149
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    .line 150
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 151
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ax;->a(I)Lcom/flurry/sdk/ax;

    move-result-object v11

    .line 152
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 153
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 154
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 155
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    .line 156
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    .line 158
    new-instance v2, Lcom/flurry/sdk/at;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/flurry/sdk/at;-><init>(Lcom/flurry/sdk/ap;JJI)V

    .line 159
    iput-boolean v9, v2, Lcom/flurry/sdk/at;->d:Z

    .line 160
    iput v10, v2, Lcom/flurry/sdk/at;->e:I

    .line 161
    iput-object v11, v2, Lcom/flurry/sdk/at;->f:Lcom/flurry/sdk/ax;

    .line 162
    iput-object v12, v2, Lcom/flurry/sdk/at;->g:Ljava/lang/String;

    .line 163
    iput v13, v2, Lcom/flurry/sdk/at;->h:I

    .line 164
    iput-wide v14, v2, Lcom/flurry/sdk/at;->i:J

    .line 165
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/flurry/sdk/at;->j:Z

    .line 166
    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/flurry/sdk/at;->k:J

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;Lcom/flurry/sdk/at;)V
    .locals 4

    .prologue
    .line 100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Lcom/flurry/sdk/av;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/av;-><init>(Lcom/flurry/sdk/au;Ljava/io/OutputStream;)V

    .line 111
    iget v1, p2, Lcom/flurry/sdk/at;->a:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    iget-wide v2, p2, Lcom/flurry/sdk/at;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 113
    iget-wide v2, p2, Lcom/flurry/sdk/at;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 114
    iget-boolean v1, p2, Lcom/flurry/sdk/at;->d:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 115
    iget v1, p2, Lcom/flurry/sdk/at;->e:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget-object v1, p2, Lcom/flurry/sdk/at;->f:Lcom/flurry/sdk/ax;

    invoke-virtual {v1}, Lcom/flurry/sdk/ax;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    iget-object v1, p2, Lcom/flurry/sdk/at;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p2, Lcom/flurry/sdk/at;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 125
    :goto_1
    iget v1, p2, Lcom/flurry/sdk/at;->h:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 126
    iget-wide v2, p2, Lcom/flurry/sdk/at;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 127
    iget-boolean v1, p2, Lcom/flurry/sdk/at;->j:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 128
    iget-wide v2, p2, Lcom/flurry/sdk/at;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 130
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p2, Lcom/flurry/sdk/at;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/au;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/at;)V

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/au;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/at;

    move-result-object v0

    return-object v0
.end method
