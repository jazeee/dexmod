.class public final Lcom/google/common/io/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeTraverser",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    new-instance v0, Lcom/google/common/io/Files$2;

    invoke-direct {v0}, Lcom/google/common/io/Files$2;-><init>()V

    sput-object v0, Lcom/google/common/io/Files;->FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 336
    return-void
.end method

.method public static varargs asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/google/common/io/Files$FileByteSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/Files$FileByteSink;-><init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;Lcom/google/common/io/Files$1;)V

    return-object v0
.end method

.method public static asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/io/Files$FileByteSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/io/Files$FileByteSource;-><init>(Ljava/io/File;Lcom/google/common/io/Files$1;)V

    return-object v0
.end method

.method public static varargs asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;
    .locals 1

    .prologue
    .line 231
    invoke-static {p0, p2}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSink;->asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;

    move-result-object v0

    return-object v0
.end method

.method public static asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Source %s and destination %s must be different"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    new-array v1, v2, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v1}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Lcom/google/common/io/ByteSink;)J

    .line 306
    return-void

    :cond_0
    move v0, v2

    .line 303
    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 286
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 287
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 366
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/CharSource;->copyTo(Ljava/lang/Appendable;)J

    .line 367
    return-void
.end method

.method public static createParentDirs(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 454
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 456
    if-nez v0, :cond_1

    .line 470
    :cond_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to create parent directories of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTempDir()Ljava/io/File;
    .locals 7

    .prologue
    .line 414
    new-instance v1, Ljava/io/File;

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x15

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 418
    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xb

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    return-object v3

    .line 417
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create directory within 10000 attempts (tried "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0 to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static equal(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 375
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 388
    cmp-long v4, v0, v6

    if-eqz v4, :cond_2

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/ByteSource;->contentEquals(Lcom/google/common/io/ByteSource;)Z

    move-result v0

    goto :goto_0
.end method

.method public static fileTreeTraverser()Lcom/google/common/collect/TreeTraverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeTraverser",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    sget-object v0, Lcom/google/common/io/Files;->FILE_TREE_TRAVERSER:Lcom/google/common/collect/TreeTraverser;

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 770
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 772
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 773
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 787
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 789
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 790
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hash(Ljava/io/File;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 1

    .prologue
    .line 594
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static isDirectory()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method

.method public static isFile()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method

.method public static map(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .locals 1

    .prologue
    .line 614
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;
    .locals 2

    .prologue
    .line 638
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .locals 4

    .prologue
    .line 669
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 674
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v0, :cond_0

    const-string v0, "r"

    :goto_0
    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 676
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/io/Files;->map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 680
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    return-object v0

    .line 674
    :cond_0
    :try_start_1
    const-string v0, "rw"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method private static map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .locals 8

    .prologue
    .line 686
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v6

    .line 688
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 689
    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 693
    invoke-virtual {v6}, Lcom/google/common/io/Closer;->close()V

    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    :try_start_1
    invoke-virtual {v6, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method private static modes(Z)[Lcom/google/common/io/FileWriteMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    sget-object v1, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/google/common/io/FileWriteMode;

    goto :goto_0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Source %s and destination %s must be different"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 491
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 486
    goto :goto_0

    .line 495
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_2
    return-void
.end method

.method public static newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .locals 3

    .prologue
    .line 100
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static readBytes(Ljava/io/File;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 580
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/ByteSource;->read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static readFile(Ljava/io/InputStream;J)[B
    .locals 3

    .prologue
    .line 163
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "file is too large to fit in a byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    long-to-int v0, p1

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static readFirstLine(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->readFirstLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 564
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/CharSource;->readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lcom/google/common/io/Files$1;

    invoke-direct {v0}, Lcom/google/common/io/Files$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static simplifyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 719
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    const-string v0, "."

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 725
    :cond_1
    invoke-static {v4}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 733
    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 734
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 735
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 737
    :cond_3
    const-string v0, ".."

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 740
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 745
    :cond_5
    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 746
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_6

    .line 747
    const-string v1, "/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_6
    :goto_2
    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 751
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 747
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 753
    :cond_8
    const-string v1, "/.."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 754
    const-string v0, "/"

    goto/16 :goto_0

    .line 755
    :cond_9
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const-string v0, "."

    goto/16 :goto_0
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 250
    invoke-static {p0}, Lcom/google/common/io/Files;->asByteSource(Ljava/io/File;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static touch(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 436
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to update modification time of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method private static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1

    .prologue
    .line 351
    invoke-static {p3}, Lcom/google/common/io/Files;->modes(Z)[Lcom/google/common/io/FileWriteMode;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/common/io/Files;->asCharSink(Ljava/io/File;Ljava/nio/charset/Charset;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/CharSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/CharSink;->write(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method public static write([BLjava/io/File;)V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/io/FileWriteMode;

    invoke-static {p1, v0}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/ByteSink;->write([B)V

    .line 276
    return-void
.end method
