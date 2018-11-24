.class public final Lnet/sqlcipher/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Lnet/sqlcipher/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteDatabaseFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    const-string v0, ":memory:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v0, "DefaultDatabaseErrorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleting the database file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "DefaultDatabaseErrorHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onCorruption(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 47
    const-string v0, "DefaultDatabaseErrorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Corruption reported by sqlite on database, deleting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "DefaultDatabaseErrorHandler"

    const-string v1, "Database object for corrupted database is already open, closing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 61
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "DefaultDatabaseErrorHandler"

    const-string v2, "Exception closing Database object for corrupted database, ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
