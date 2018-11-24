.class final Lcom/google/common/io/CharStreams$NullWriter;
.super Ljava/io/Writer;
.source "CharStreams.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/google/common/io/CharStreams$NullWriter;

    invoke-direct {v0}, Lcom/google/common/io/CharStreams$NullWriter;-><init>()V

    sput-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/io/CharStreams$NullWriter;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    return-object v0
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 229
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 217
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 224
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$NullWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$NullWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/CharStreams$NullWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "CharStreams.nullWriter()"

    return-object v0
.end method

.method public final write(I)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 212
    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 213
    return-void
.end method

.method public final write([C)V
    .locals 0

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public final write([CII)V
    .locals 2

    .prologue
    .line 202
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 203
    return-void
.end method
