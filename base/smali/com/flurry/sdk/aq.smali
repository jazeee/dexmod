.class public final Lcom/flurry/sdk/aq;
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
        "Lcom/flurry/sdk/ap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/hg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hg",
            "<",
            "Lcom/flurry/sdk/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/flurry/sdk/hg;

    new-instance v1, Lcom/flurry/sdk/au;

    invoke-direct {v1}, Lcom/flurry/sdk/au;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/hg;-><init>(Lcom/flurry/sdk/hj;)V

    iput-object v0, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/hg;

    .line 155
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/flurry/sdk/ap;
    .locals 22

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const/4 v4, 0x0

    .line 285
    :goto_0
    return-object v4

    .line 233
    :cond_0
    new-instance v18, Lcom/flurry/sdk/as;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/as;-><init>(Lcom/flurry/sdk/aq;Ljava/io/InputStream;)V

    .line 240
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 241
    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    const/4 v5, 0x0

    .line 245
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 247
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 248
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 249
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 250
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 251
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/br;->a(I)Lcom/flurry/sdk/br;

    move-result-object v13

    .line 253
    const/4 v14, 0x0

    .line 254
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 256
    if-eqz v15, :cond_2

    .line 257
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 259
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_2

    .line 260
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    .line 265
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 267
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 268
    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    const/16 v17, 0x0

    .line 272
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    .line 274
    new-instance v4, Lcom/flurry/sdk/ap;

    invoke-direct/range {v4 .. v17}, Lcom/flurry/sdk/ap;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/br;Ljava/util/Map;IILjava/lang/String;)V

    .line 277
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap;J)J

    .line 278
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap;Z)Z

    .line 279
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/ap;->b(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/hg;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/flurry/sdk/hg;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 282
    iput-object v5, v4, Lcom/flurry/sdk/ap;->a:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v4}, Lcom/flurry/sdk/ap;->o()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/io/OutputStream;Lcom/flurry/sdk/ap;)V
    .locals 4

    .prologue
    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    new-instance v1, Lcom/flurry/sdk/ar;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ar;-><init>(Lcom/flurry/sdk/aq;Ljava/io/OutputStream;)V

    .line 170
    invoke-static {p2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    invoke-static {p2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 177
    :goto_1
    invoke-virtual {p2}, Lcom/flurry/sdk/ap;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p2}, Lcom/flurry/sdk/ap;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 184
    :goto_2
    invoke-virtual {p2}, Lcom/flurry/sdk/ap;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 185
    invoke-virtual {p2}, Lcom/flurry/sdk/ap;->r()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 186
    invoke-static {p2}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/sdk/ap;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 187
    invoke-static {p2}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/sdk/ap;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    invoke-static {p2}, Lcom/flurry/sdk/ap;->d(Lcom/flurry/sdk/ap;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    invoke-static {p2}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/sdk/ap;)Lcom/flurry/sdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/br;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 191
    invoke-static {p2}, Lcom/flurry/sdk/ap;->f(Lcom/flurry/sdk/ap;)Ljava/util/Map;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_4

    .line 193
    invoke-static {p2}, Lcom/flurry/sdk/ap;->f(Lcom/flurry/sdk/ap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    invoke-static {p2}, Lcom/flurry/sdk/ap;->f(Lcom/flurry/sdk/ap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 198
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :cond_2
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    :cond_5
    invoke-static {p2}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/sdk/ap;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 210
    invoke-static {p2}, Lcom/flurry/sdk/ap;->h(Lcom/flurry/sdk/ap;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    invoke-static {p2}, Lcom/flurry/sdk/ap;->i(Lcom/flurry/sdk/ap;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    invoke-static {p2}, Lcom/flurry/sdk/ap;->j(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 214
    invoke-static {p2}, Lcom/flurry/sdk/ap;->j(Lcom/flurry/sdk/ap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 220
    :goto_4
    invoke-static {p2}, Lcom/flurry/sdk/ap;->k(Lcom/flurry/sdk/ap;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 222
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/aq;->a:Lcom/flurry/sdk/hg;

    iget-object v1, p2, Lcom/flurry/sdk/ap;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/hg;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto/16 :goto_0

    .line 217
    :cond_6
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p2, Lcom/flurry/sdk/ap;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/aq;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ap;)V

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/aq;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ap;

    move-result-object v0

    return-object v0
.end method
